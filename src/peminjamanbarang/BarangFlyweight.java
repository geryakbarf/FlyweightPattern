/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peminjamanbarang;

import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author gerya
 */
public class BarangFlyweight {
    
    private static final HashMap barangMap = new HashMap();
    
    public static BasisData getBarang(String kodeBarang){
        Barang barang = (Barang)barangMap.get(kodeBarang);
        
        if(barang == null){
            barang = new Barang(kodeBarang);
            barangMap.put(kodeBarang, barang);
        }
        
        return barang;
    }
    
}
