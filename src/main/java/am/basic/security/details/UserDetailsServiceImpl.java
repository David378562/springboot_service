package am.basic.security.details;

import am.basic.models.User;
import am.basic.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        /*Optional<User> userCandidate = userRepository.findOneByLogin(login);
        if (userCandidate.isPresent()) {
            return new UserDetailsImpl(userCandidate.get());
        } else throw new IllegalArgumentException("User not found!");
    }*/
        return new UserDetailsImpl(userRepository.findOneByLogin(login)
                .orElseThrow(IllegalArgumentException::new));
    }
}
