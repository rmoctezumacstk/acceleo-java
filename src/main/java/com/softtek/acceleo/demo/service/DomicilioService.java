package com.softtek.acceleo.demo.service;

import com.softtek.acceleo.demo.domain.Domicilio;
import java.util.List;

public interface DomicilioService {

	public void addDomicilio(Domicilio domicilio);

	public void editDomicilio(Domicilio domicilio);
	
	public List<Domicilio> listDomicilios(Domicilio domicilio);

	public Domicilio getDomicilio(int empid);

	public void deleteDomicilio(Domicilio domicilio);
	
	public List<Domicilio> listDomiciliosQuery(Domicilio domicilio, String query, int page, int size);

	public List<Domicilio> listDomiciliosPagination(Domicilio domicilio, int page, int size);
	
	public long getTotalRows();

	public long getTotalRows(String query);

	public long getTotalRowsSearch(String query);

}
