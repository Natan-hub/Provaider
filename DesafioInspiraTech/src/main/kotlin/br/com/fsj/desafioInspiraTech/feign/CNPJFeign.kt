package br.com.desafioinspiratech.feign

import org.springframework.cloud.openfeign.FeignClient
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable


@FeignClient(
    name = "receita-cnpj-api",
    value =  "receita-cnpj-api",
    url ="https://receitaws.com.br"

)
interface CNPJFeign {

    @GetMapping("/v1/cnpj/{cnpj}")
    fun conectaWS(@PathVariable cnpj: String): Any
}