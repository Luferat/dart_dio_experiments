# dart_dio_experiments
Experimentos com Dart e a biblioteca HTTP "Dio".

1. Inicie a API

Abra um terminal e comande:
```cmd
cd apifake
npm install
npx json-server db.json -p 8080
```

Não encerre ou feche o terminal para que a APi continue funcionando.

2. Execute as lib

 - `create.dart` → Cadastra um novo item (POST) na API
 - `delete.dart` → Altera o "status" do item identificado pelo "Id" como "OFF"
 - `read_all.dart` → Recebe todos os itens com "status=ON" e ordenados por "created_at"
 - `read_one.dart` → Recebe um ítem único identificado pelo Id desde que "status=ON"

> Dica! Você pode ver "em tempo real" as alterações na API acessando o arquivo "/apifake/db.json".