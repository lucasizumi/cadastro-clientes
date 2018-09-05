package br.com.izumi.sherwin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="TB_CLIENTE")
@SequenceGenerator(name="seqCliente", sequenceName="SQ_CLIENTE", allocationSize=1)
public class Cliente {

	@Id
	@GeneratedValue(generator="seqCliente", strategy=GenerationType.SEQUENCE)
	@Column(name="cd_cliente")
	private int codigo;
	
	@NotBlank
	@Size(max=100)
	@Column(name="ds_razao_social")
	private String razaoSocial;
	
	@NotBlank
	@Size(max=100)
	@Column(name="nm_fantasia")
	private String nomeFantasia;
	
	@NotBlank
	@Size(max=18)
	@Column(name="ds_cpf_cnpj")
	private String cnpjCpf;

	@NotBlank
	@Column(name="nr_telefone")
	private String telefone;
	
	@Column(name="status")
	private boolean status = true;

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getRazaoSocial() {
		return razaoSocial;
	}

	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	public String getNomeFantasia() {
		return nomeFantasia;
	}

	public void setNomeFantasia(String nomeFantasia) {
		this.nomeFantasia = nomeFantasia;
	}

	public String getCnpjCpf() {
		return cnpjCpf;
	}

	public void setCnpjCpf(String cnpjCpf) {
		this.cnpjCpf = cnpjCpf;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
}

