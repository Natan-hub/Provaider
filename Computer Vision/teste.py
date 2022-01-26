import cv2 #Computer Vision

nuvem = cv2.imread("cloud.jpg")
# BGR = RGB tabela das cores na versão do python se diz BGR.
nuvemGray = cv2.cvtColor(nuvem, cv2.COLOR_BGR2GRAY)

cv2.imshow("Nuvem", nuvemGray)

cv2.waitKey(0) #Comando: aguarde pressionar alguma tecla
cv2.destroyAllWindows() #Depois que pressionar a tecla vem pra essa linha e fecha tudo

