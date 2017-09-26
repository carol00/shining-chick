# Shining Chick
![](https://shining-chick.firebaseapp.com/images/chick.jpg)

## Introduction

以兒時玩伴之一的「電子機」為構想，讓部分人有懷念的感覺，進而引起共鳴；而沒接觸過的人，也可一同來體驗看看！

Shining Chick也結合了玩遊戲的經驗，在餵食時，依食物不同，所增加的飽足感也有所改變，進而呈現在HP上，一目瞭然目前飢餓狀況。

隨著一次次的實作，依序會有衣服顏色挑選、隨餵食情況而影響體型、表情符號、發光...等。

## Implementation

Web App使用React、Redux進行開發，以component為最小組成單位，去達到重複使用的功能，並將component和邏輯做切割，讓component更加簡潔易讀；資料部分則由redux的state統一管理，從state拿取資料，在做資料處理，最後以參數方式傳進component。

切換方式也是以component為主，保持single page，只切換component。
