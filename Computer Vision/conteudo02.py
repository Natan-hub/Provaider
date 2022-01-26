import cv2 as cv #pip install openc_python
import numpy as np #pip install numpy

imagemPretoBranco = cv.imread("imagens/pretoebranco.png")
clouds = cv.imread("imagens/clouds.jpg")
cloudsGray = cv.cvtColor(clouds, cv.COLOR_BGR2GRAY)
cv.imshow("Preto e Branco", imagemPretoBranco)
h, w, bpp = np.shape(imagemPretoBranco) #shape = forma 
print("Largura:", w)
print("Altura:", h)


                                    #eixos x e y
print("A cor do pixel 80x60: ", imagemPretoBranco[60,80] )


# [ini] aqui eu devo processar a imagem

for x in range(0, w):
    for y in range(0, h):
        #função para comparar cor é pelo numpy (np.array_equal)
        if np.array_equal(imagemPretoBranco[y, x], [255, 255, 255]):
            imagemPretoBranco[y, x] = [152, 254, 14]


#[end] aqui eu devo processar  imagem
print("A cor do pixel 212x145: ", imagemPretoBranco[145,212] )
cv.imshow("Preto e Branco", imagemPretoBranco)
cv.imshow("clouds (Gray)", cloudsGray)
cv.waitKey(0)
cv.destroyAllWindows()


