package work.chauncy.tacocloud.data;

import org.springframework.data.repository.CrudRepository;

import work.chauncy.tacocloud.User;

public interface UserRepository
        extends CrudRepository<User, Long> {

    User findByUsername(String username);
}
