package com.chatRobot.service.impl;

import com.chatRobot.dao.FundMapper;
import com.chatRobot.dao.accountMapper;
import com.chatRobot.dao.customMapper;
import com.chatRobot.dao.fundaccountMapper;
import com.chatRobot.model.Fund;
import com.chatRobot.model.account;
import com.chatRobot.model.custom;
import com.chatRobot.model.fundaccount;
import com.chatRobot.service.FundService;
import com.chatRobot.tool.getHttpJson;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

/**
 * Created by Cookbooks on 2018/1/18.
 */
@Service("FundService")
public class FundServiceImpl implements FundService {
    @Resource
    private FundMapper FundDao;
    @Resource
    private fundaccountMapper fundaccountDao;

    @Resource
    private accountMapper accountDao;

    @Resource
    private customMapper customDao;
    public List<Fund> searchByPage(String param,int page,int size){
        List<Fund> res;
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        int acNum=-1;
        if(pattern.matcher(param).matches()&&!"".equals(param))
            acNum=Integer.parseInt(param);
        res=FundDao.selectByPage(acNum,param,page*size-size,size);
        return res;
    }
    public long searchCount(String param){
        long res;
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        int acNum=-1;
         if(pattern.matcher(param).matches()&&!"".equals(param))
            acNum=Integer.parseInt(param);
        res = FundDao.getFundCount(acNum,param);
        return res;
    }

    public List<Fund> selectAll(){
        return FundDao.selectAll();
    }

    public Fund searchById(String id){
        return FundDao.selectByPrimaryKey(id);
    }

    @Transactional
    public boolean insertFund(Fund Fund){
        Fund.setCreatedDate(new Date());
        Fund.setfNo(String.valueOf(System.currentTimeMillis()).substring(4, 13));
        Fund.setState("锁定");
        int i=FundDao.insert(Fund);
        if(i<0)return false;
        else
            return true;
    }
//
    @Transactional
    public boolean updateFund(Fund cus){
        try {
            Fund s = FundDao.selectByPrimaryKey(cus.getfNo());
            s.setCompany(cus.getCompany());
            s.setfName(cus.getfName());
            s.setPrice(cus.getPrice());
            s.setDescription(cus.getDescription());
            s.setType(cus.getType());
            s.setState(cus.getState());
            FundDao.updateByPrimaryKey(s);
            return true;
        }
        catch(RuntimeException r){
            return false;
        }
    }

    public boolean deleteFund(int sId){
        FundDao.deleteByPrimaryKey(sId);
            return true;
    }

    @Transactional
    public boolean deleteAll(String str[] ){
        try {
            for (int i = 0; i < str.length; i++) {
                FundDao.deleteByPrimaryKey(Integer.parseInt(str[i]));
            }
            return true;
        }
        catch( RuntimeException r){
            return false;
        }
    }
//    @Transactional
    public ModelAndView buyFund(String result ){//String fNo, int cNo,float count,String password
        ModelAndView res=new ModelAndView("Fundsearch");
        /*解析json数据*/
        JSONObject jsonNew;
        result = result.substring(result.indexOf("{"), result.indexOf("}") + 1);
        jsonNew = JSONObject.fromObject(result);
        String fNo=(String) jsonNew.get("fNo");
        int cNo=Integer.parseInt((String) jsonNew.get("cNo"));
        float count=Float.parseFloat((String) jsonNew.get("count"));
        String password=(String) jsonNew.get("password");

        res.addObject("tId",cNo);
        Float price=FundDao.selectPrice(fNo);
        custom cus=customDao.selectByPrimaryKey(cNo);
        fundaccount fac;
        if(cus==null) {
            res.addObject("info", "该用户不存在");
            res.setViewName("customsearch");
            return res;
        }
        else{
            List<fundaccount> list=fundaccountDao.selectBycIdAndfNo(cNo,fNo);
            List<account> list1=accountDao.selectBycNo(cNo);
            if(list1.size()==0){
                res.addObject("log", "该用户无资金账户");
                res.setViewName("accountsearch");
                return res;
            }
            account ac=list1.get(0);
            if(!password.equals(ac.getPassword()))
            {
                res.addObject("log", "资金账户密码错误");
                res.setViewName("BuyFund");
                return res;
            }
            else {
                if (list.size() == 0) {
                    if (!this.insertfundaccount(cNo, fNo, ac.getAcNum())) {
                        res.addObject("log", "基金账户建立失败");
                        res.setViewName("accountsearch");
                        return res;
                    }
                }
            }
            list=fundaccountDao.selectBycIdAndfNo(cNo,fNo);
            fac=list.get(0);
            if(!BuyProgess(count,price,ac,fac)){
                res.addObject("log", "购买失败");
                res.setViewName("BuyFund");
                return res;
            }
            res.addObject("log", "购买成功");
            res.setViewName("BuyFund");
            return res;
        }

    }
    @Transactional
    public boolean BuyProgess(float count,Float price,account ac,fundaccount fac){
        try {
            float cnt;
            if(ac.getMoney()>=count&&!"锁定".equals(ac.getFlag())) {
                ac.setMoney(ac.getMoney()-count);
                count = (float) (count * 0.9985);
                cnt = (float) (count * 1.0 / price);
                fac.setPrice(fac.getPrice() + count);
                fac.setCount(fac.getCount() + cnt);
                accountDao.updateByPrimaryKey(ac);
                fundaccountDao.updateByPrimaryKey(fac);
            }
            else{
                return false;
            }
        }
        catch(Exception e){
            return false;

        }
        return true;

    }



    public  boolean insertfundaccount(int cId,String fNo,int acNum){
        fundaccount fac=new fundaccount();
        fac.setId(Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(4, 13)));
        fac.setcId(cId);
        fac.setfNo(fNo);
        fac.setAcNum(acNum);
        fac.setPrice(new Float(0));
        fac.setCount(new Float(0));
        int i=fundaccountDao.insert(fac);
        if(i<0)return false;
        return true;
    }


    @Transactional
    public boolean updateAll(){
        try {
            List<Fund> res;
            String str, result;
            res = this.selectAll();
            JSONObject jsonNew;
            if (res.size() != 0) {
                for (int i = 0; i < res.size(); i++) {
                    str = getHttpJson.getHttpResponse("http://fundgz.1234567.com.cn/js/" + res.get(i).getfNo() + ".js");
                    if (str != null) {
                        result = str.substring(str.indexOf("{"), str.indexOf("}") + 1);
                        jsonNew = JSONObject.fromObject(result);
                        res.get(i).setPrice(Float.parseFloat((String) jsonNew.get("dwjz")));
                        this.updateFund(res.get(i));
                        fundaccountDao.updateByfNo(res.get(i).getPrice(), res.get(i).getfNo());
                    }
                }
            }
        }
        catch(Exception e){
            return false;
        }
        return true;
    }

    @Transactional
    public Fund updateByInterface(Fund res){
        try {
            String str;
            String s[];
            if (res!=null) {
                    str = getHttpJson.getHttpResponse("http://fund.eastmoney.com/pingzhongdata/" + res.getfNo() + ".js");
                    if (str != null) {
                        s=str.split(";",13);
                        res.setFund_Rate(s[4].substring(s[4].indexOf("=")+2,s[4].length()-1));
                        res.setFund_minsg(s[5].substring(s[5].indexOf("=")+2,s[5].length()-1));
                        res.setSyl_1n(s[8].substring(s[8].indexOf("=")+2,s[8].length()-1));
                        res.setSyl_6y(s[9].substring(s[9].indexOf("=")+2,s[9].length()-1));
                        res.setSyl_3y(s[10].substring(s[10].indexOf("=")+2,s[10].length()-1));
                        res.setSyl_1y(s[11].substring(s[11].indexOf("=")+2,s[11].length()-1));
                    }
            }
        }
        catch(Exception e){
            return res;
        }
        return res;
    }
}


