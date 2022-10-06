# gnuplot files


shellscript を実行すると、pltディレクトリにある同名のスクリプトファイルがgnuplot上で実行され、texファイルを出力する。

texファイルをコンパイルし、.epsファイルを生成する。epsファイルをImageMagickでpngファイルにコンバートし、imageディレクトリに画像を出力する。
ImageMagick はデフォルトでは eps → png にconvert できないため /etc/ImageMagick-6/policy.xml を編集しておく。

## l2err.png
![l2err](https://user-images.githubusercontent.com/102783602/193715321-4945f7f0-7d40-4b38-99a0-393a5dd9dca4.png)

## Re_c.png
![Re_c](https://user-images.githubusercontent.com/102783602/193715332-11485647-939c-436d-bae8-269503662a74.png)

## vel.png
![vel](https://user-images.githubusercontent.com/102783602/193715338-9741ef69-4467-454d-830c-023ac4e08375.png)

## xyc.png
![xyc](https://user-images.githubusercontent.com/102783602/194197069-00c3b1ee-f6c6-4ba5-a380-d3b0fd94dc79.png)

## xyuvp.png
![xyuvp](https://user-images.githubusercontent.com/102783602/193715351-34858e42-4a13-4e8a-b7fa-2ee4ba142cc8.png)
