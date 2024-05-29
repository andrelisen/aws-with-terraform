locals {
  files = ["teste.json", "ola-mundo.csv", "site.html"]

  file_extensions = [for extensao in local.files : regex("\\.[0-9a-z]+$", extensao)]


  //usando if - coloca as extensoes do file para maiusculo - se nao for .json
  file_extensions_upper = { for f in local.file_extensions : f => upper(f) if f != ".json" }

  ips = [
    {
      public  = "10.10.1.0",
      private = "255.255.1.0",
    },
    {
      public  = "20.20.2.0",
      private = "256.256.1.0",
    },
  ]

}
