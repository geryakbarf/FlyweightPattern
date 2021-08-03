
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peminjamanbarang;

import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author gerya
 */
public class BarangTableModel extends AbstractTableModel {
    
    private ArrayList<Object> data;
    private String[] namaField = {"Kode Barang", "Nama Barang", "Harga Sewa Perhari"};

    public void setData(ArrayList<Object> dt) {
        this.data = dt;
    }

    @Override
    public int getRowCount() {
        return data.size();
    }

    @Override
    public int getColumnCount() {
        return namaField.length;
    }

    @Override
    public String getColumnName(int column) {
        return namaField[column];
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Kamera b = (Kamera) data.get(rowIndex);
        switch (columnIndex) {
            case 0:
                return b.getKode();
            case 1:
                return b.getNama();
            case 2:
                return b.getHarga();
            default:
                return null;
        }
    }
    
}
