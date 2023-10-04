package com.estel.entity;


import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "t_role")
@Getter
@Setter
public class Role implements GrantedAuthority {

    @Id
    private Long id;
    private String name;

    @Transient
    @ManyToMany(mappedBy = "roles")
    private Set<User> users;
    public Role() {

    }
    public Role(Long id) {
        this.id = id;
    }
    public Role(Long id, String name) {
        this.name = name;
    }
    @Override
    public String getAuthority() {
        return getName();
    }
}
