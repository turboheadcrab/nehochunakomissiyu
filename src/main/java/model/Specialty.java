package model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Apraxin Vladimir on 25.2.17.
 */

@Entity
@Table(name = "specialties")
public class Specialty implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "specialty_id", unique = true, nullable = false)
    private Integer specialtyId;

    @Column(name = "name", unique = true, nullable = false)
    private String name;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "specialties")
    private Set<Doctor> doctors = new HashSet<>(0);

    public Specialty() {
    }

    public Specialty(Integer specialtyId, String name) {
        this.specialtyId = specialtyId;
        this.name = name;
    }

    public Specialty(Integer specialtyId, String name, Set<Doctor> doctors) {
        this.specialtyId = specialtyId;
        this.name = name;
        this.doctors = doctors;
    }

    public Integer getSpecialtyId() {
        return specialtyId;
    }

    public void setSpecialtyId(Integer specialtyId) {
        this.specialtyId = specialtyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Doctor> getDoctors() {
        return doctors;
    }

    public void setDoctors(Set<Doctor> doctors) {
        this.doctors = doctors;
    }
}