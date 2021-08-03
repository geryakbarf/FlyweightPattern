/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peminjamanbarang;

import java.util.ArrayList;

/**
 *
 * @author gerya
 */
public interface BasisData {
    public final String driver = "com.mysql.jdbc.Driver";
    public final String url = "jdbc:mysql://localhost/db_penyewaan";
    public final String user = "root";
    public final String pass = "";
    
    public ArrayList<Barang> tampilPencarianBarang();
}
