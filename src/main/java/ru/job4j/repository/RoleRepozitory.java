package ru.job4j.repository;

import org.springframework.data.repository.CrudRepository;
import ru.job4j.domain.Role;

public interface RoleRepozitory extends CrudRepository<Role, Integer> {
}