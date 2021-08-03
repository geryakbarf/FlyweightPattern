/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peminjamanbarang;

/**
 *
 * @author gerya
 */
public class Kamera {
    private String kode;
    private String nama;
    private int harga;

    public String getKode() {
        return kode;
    }

    public String getNama() {
        return nama;
    }

    public int getHarga() {
        return harga;
    }

    
    public Kamera(String kode, String nama, int harga){
        this.kode = kode;
       this.nama = nama;
        this.harga = harga;
     
    }
    
}
