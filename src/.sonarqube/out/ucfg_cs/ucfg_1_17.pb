
kMix.Identity.Data.ApplicationDbContext.OnConfiguring(Microsoft.EntityFrameworkCore.DbContextOptionsBuilder)j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.cs> L(	optionsBuilder"0*�
0��
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.cs@ @(3
%0"7Microsoft.Extensions.Configuration.ConfigurationBuilder�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.cs@ @(1
%1"NMicrosoft.Extensions.Configuration.ConfigurationBuilder.ConfigurationBuilder()*

%0�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.csA A(>
%2")System.IO.Directory.GetCurrentDirectory()*"
System.IO.Directory�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.cs@ A(?
%3"�Microsoft.Extensions.Configuration.FileConfigurationExtensions.SetBasePath(Microsoft.Extensions.Configuration.IConfigurationBuilder, string)*B"@
>Microsoft.Extensions.Configuration.FileConfigurationExtensions*

%0*

%2�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.csB B(:
%4"__id*1*/
Mix.Identity.Const"
CONST_FILE_APPSETTING�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.cs@ B(;
%5"�Microsoft.Extensions.Configuration.JsonConfigurationExtensions.AddJsonFile(Microsoft.Extensions.Configuration.IConfigurationBuilder, string)*B"@
>Microsoft.Extensions.Configuration.JsonConfigurationExtensions*

%3*

%4�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.cs@ C(
%6"@Microsoft.Extensions.Configuration.IConfigurationBuilder.Build()*

%5�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.cs@ C(
config"__id*

%6�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.csD4 D(R
%7"__id*4*2
Mix.Identity.Const"
CONST_DEFAULT_CONNECTION�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.csD D(S
%8"�Microsoft.Extensions.Configuration.ConfigurationExtensions.GetConnectionString(Microsoft.Extensions.Configuration.IConfiguration, string)*>"<
:Microsoft.Extensions.Configuration.ConfigurationExtensions*


config*

%7�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.csD D(S
cnn"__id*

%8�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.csE E(*
%9"string.IsNullOrEmpty(string)*
"
string*

cnn*
1
2*�
1�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.csH H(0
%10"�Microsoft.EntityFrameworkCore.SqlServerDbContextOptionsExtensions.UseSqlServer(Microsoft.EntityFrameworkCore.DbContextOptionsBuilder, string, System.Action<Microsoft.EntityFrameworkCore.Infrastructure.SqlServerDbContextOptionsBuilder>)*E"C
AMicrosoft.EntityFrameworkCore.SqlServerDbContextOptionsExtensions*

optionsBuilder*

cnn*
""�
�
j
`C:\_workspace\github\mixcore\mix.identity\src\Mix.Identity\Identity\Data\ApplicationDbContext.csI I(2
%11"lMicrosoft.EntityFrameworkCore.DbContext.OnConfiguring(Microsoft.EntityFrameworkCore.DbContextOptionsBuilder)* *

optionsBuilder*
2*
2"
""