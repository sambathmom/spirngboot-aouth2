package springboot.oauth2.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import springboot.oauth2.demo.model.Company;
import springboot.oauth2.demo.repository.CompanyRepository;

import java.util.List;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyRepository companyRepository;

    @Override
    @Transactional(readOnly = true)
    @PreAuthorize("hasAuthority('COMPANY_READ') and hasAuthority('DEPARTMENT_READ')")
    public Company get(Long id) {
        return companyRepository.find(id);
    }

    @Override
    @Transactional(readOnly = true)
    @PreAuthorize("hasAuthority('COMPANY_READ') and hasAuthority('DEPARTMENT_READ')")
    public Company get(String name) {
        return companyRepository.find(name);
    }

    @Override
    @Transactional(readOnly = true)
    @PreAuthorize("hasAuthority('COMPANY_READ')")
    public List<Company> getAll() {
        return companyRepository.findAll();
    }

    @Override
    @Transactional
    @PreAuthorize("hasAnyRole('COMPANY_CREATE')")
    public void create(Company company) {
        companyRepository.create(company);
    }

    @Override
    @Transactional
    @PreAuthorize("hasAuthority('COMPANY_UPDATE')")
    public Company update(Company company) {
        return companyRepository.update(company);
    }

    @Override
    @Transactional
    @PreAuthorize("hasAuthority('COMPANY_DELETE')")
    public void delete(Long id) {
        companyRepository.delete(id);
    }

    @Override
    @Transactional
    @PreAuthorize("hasAuthority('COMPANY_DELETE')")
    public void delete(Company company) {
        companyRepository.delete(company);
    }
}
