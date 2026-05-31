# Seven — Política de Privacidade

Página estática (LGPD) da Seven, servida via nginx em container Docker. Pensada para ser
o destino dos links de "Política de Privacidade" em apps, sites e integrações.

## Estrutura

```
.
├── index.html      # Página da política de privacidade
├── styles.css      # Estilos
├── logo/           # Logos da Seven (dark, white, favicon)
├── Dockerfile      # Imagem nginx com os arquivos estáticos
├── nginx.conf      # Configuração do nginx (gzip, cache, headers)
└── .dockerignore
```

## Rodar localmente

```bash
docker build -t seven-privacidade .
docker run -p 8080:80 seven-privacidade
# acesse http://localhost:8080
```

## Deploy no EasyPanel

1. Crie um serviço do tipo **App** apontando para este repositório do GitHub.
2. Build: **Dockerfile** (raiz do projeto).
3. Porta interna: **80**.
4. Configure o domínio desejado (ex.: `privacidade.sevenst.com.br`).

A cada push na branch principal, o EasyPanel reconstrói e publica automaticamente.

## Antes de publicar — preencher

No `index.html`, substitua os campos marcados com `[preencher ...]`:

- Razão social e CNPJ
- Endereço
- Nome do Encarregado (DPO)
- E-mail de privacidade (atualmente `privacidade@sevenst.com.br`)

> A política foi redigida como modelo geral aderente à LGPD (Lei nº 13.709/2018).
> Recomenda-se revisão jurídica antes da publicação oficial.
