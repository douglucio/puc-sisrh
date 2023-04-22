# Define a imagem base do Docker
FROM openjdk:11-jdk-slim

# Define um diretório para a aplicação
WORKDIR /app

# Copia o arquivo pom.xml da aplicação para dentro do contêiner
COPY pom.xml .

# Executa o comando "mvn dependency:resolve" para baixar as dependências da aplicação
# RUN mvn dependency:resolve

# Copia todos os arquivos da aplicação para dentro do contêiner
COPY . .

# Executa o comando "mvn package" para compilar a aplicação
RUN mvn package

# Define a porta em que a aplicação irá rodar
EXPOSE 8080

# Define o comando de inicialização da aplicação
CMD ["java", "-jar", "target/sisrh.war"]