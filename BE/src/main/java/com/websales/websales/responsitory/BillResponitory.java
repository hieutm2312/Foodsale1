package com.websales.websales.responsitory;

import com.websales.websales.model.Bill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BillResponitory extends JpaRepository<Bill, Integer> {
    @Query(value = "SELECT * FROM websales.bill where client_id = :client_id", nativeQuery = true)
    List<Bill> findBillByClientId(int client_id);

    @Query(value = "select *from websales.bill ORDER BY id DESC LIMIT 1", nativeQuery = true)
    Bill findBillLastRow();
}
