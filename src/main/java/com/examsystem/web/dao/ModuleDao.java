package com.examsystem.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.examsystem.web.model.Module;

public class ModuleDao {
    public List<Module> getModule(String sid) {
        try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examsystem","root","");               
        PreparedStatement st = con.prepareStatement("select m.Mcode,m.Mname from Student s, Module m, Offers o, Course c where s.CID=c.CID AND c.CID=o.CID AND m.Mcode=o.Mcode AND SID=?");
        st.setString(1,sid);
        ResultSet rs = st.executeQuery();
        List<Module> md = new ArrayList<>();
        while(rs.next()) {
            Module item = new Module();   
            item.setMcode(rs.getString("Mcode"));
            item.setMname(rs.getString("Mname"));
            
            md.add(item);
        }  
        return md;
        
    }catch(Exception E){
        System.out.println("Error"+E);
    }
    return new ArrayList<Module>();
    
}

}
