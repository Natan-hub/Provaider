package br.com.desafioinspiratech.service

import br.com.desafioinspiratech.feign.CNPJFeign
import org.springframework.stereotype.Service

@Service
class CNPJService(
    private val receitaCNPJFeign: CNPJFeign
) {
    fun buscarCNPJ( cnpj: String): Any {
        return receitaCNPJFeign.conectaWS(cnpj)
    }
}