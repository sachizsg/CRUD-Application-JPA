package net.codejava.customer;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {
    
	@Autowired
	CustomerRepository repo;
	
	public List<Customer> listAll(){
		return (List<Customer>) repo.findAll();
	}
	
	public void save(Customer customer){
		repo.save(customer);
	}
	
	public Customer get(Long id) {
		Optional<Customer> result = repo.findById(id);
		return result.get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public List<Customer> search(String keyword) {
		return repo.search(keyword);
		
	}
	
}
