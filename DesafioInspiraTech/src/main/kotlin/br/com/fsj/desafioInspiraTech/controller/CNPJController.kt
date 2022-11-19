package br.com.fsj.desafioInspiraTech.controller

import br.com.fsj.desafioInspiraTech.service.CNPJService
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RestController


@RestController
class CNPJController(private val receitaCNPJService: CNPJService) {

    @GetMapping("buscaPorCNPJ/{cnpj}")
    fun buscarCNPJ(@PathVariable cnpj: String): Any {
        return receitaCNPJService.buscarCNPJ(cnpj)
    }
}

//caminho para onde sera recebido a requisição