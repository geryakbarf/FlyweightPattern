/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peminjamanbarang;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author gerya
 */
public class Barang implements BasisData{

    private String kodeBarang;
    
    public Barang(String kodeBarang){
        this.kodeBarang = kodeBarang;
    }
    
    @Override
    public ArrayList tampilPencarianBarang() {
        ArrayList<Kamera> list = new ArrayList<Kamera>();
        Connection konek = null;
        Statement stmt = null;
        try {
            Class.forName(driver);
            konek = DriverManager.getConnection(url, user, pass);
            stmt = konek.createStatement();
            String sql;
            sql = "SELECT * FROM barang where kode_barang like '%" + kodeBarang + "%'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                list.add(new Kamera(rs.getString("kode_barang"), rs.getString("nama_barang"), rs.getInt("harga_sewa_perhari")));
            }//endwhile
            rs.close();
        }//endtry
        catch (Exception a) {
            System.out.println("Error : " + a.getMessage());
        }//endcatch
        finally {
            try {
                stmt.close();
            } catch (Exception e) {
            }
            try {
                konek.close();
            } catch (Exception e) {
            }
        }
        return list;
    }

 
}
