void main() {
  print('''
  
Este main() não faz nada. Rode as lib abaixo para ver os experimentos:

 • 'create.dart' → Cadastra um novo item (POST) na API
 • 'delete.dart' → Altera o "status" do item identificado pelo "Id" como "OFF"
 • 'read_all.dart' → Recebe todos os itens com "status=ON" e ordenados por "created_at"
 • read_one.dart' → Recebe um ítem único identificado pelo Id desde que "status=ON"
 
Em Flutter, em vez de enviar os dados de "allItems" para o terminal usando 'print()', salve no "state" para usar na view (Ex.: Scafold()) do aplicativo. 
  
  ''');
}