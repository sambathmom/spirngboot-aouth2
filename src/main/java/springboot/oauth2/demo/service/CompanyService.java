package springboot.oauth2.demo.service;

import springboot.oauth2.demo.model.Company;

import java.util.List;

public interface CompanyService {

    Company get(Long id);

    Company get(String name);

    List<Company> getAll();

    void create(Company company);

    Company update(Company company);

    void delete(Long id);

    void delete(Company company);
}
