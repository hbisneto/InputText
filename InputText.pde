// InputMessage - Processing

final String InitMessage = "Digite alguma coisa";
String Message = InitMessage;

void setup() {
  size(600, 400);  
}

void draw() {
  background(44,88,153);
  fill(255);
  text(Message, 50, 50);
  
  fill(0,250,0);
  text(">> Clique com o mouse para reiniciar a mensagem", 50, height*0.9);
}

void mousePressed() {
  Message = InitMessage;  // Reinicia mensagem. Prepara para nova mensagem
}

void keyPressed() {
  // Preparar para escrever nova mensagem. A próxima reinicia o conteiner de mensagem
  if (Message.equals(InitMessage)) {
    Message = "";
  }

// Detecta somente caracteres alfanumericos
  if ( (key>='a' && key<='z') ||
    (key>='a' && key<='z') ||
    (key>='0' && key<='9') 
    ) {
    Message += key;
  }
}
