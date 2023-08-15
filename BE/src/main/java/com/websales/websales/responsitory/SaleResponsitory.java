package com.websales.websales.responsitory;

import com.websales.websales.model.Sale;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SaleResponsitory extends JpaRepository<Sale, Integer> {

}
