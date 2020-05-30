<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="${APP_PATH }/css/elementui.css" rel="stylesheet"/>
<title></title>
<style>
body {
    color: #111;
    background: #fff;
    font-size: 12px;
}
a {
	text-decoration: none;
}

.main-container {
	width: 1180px;
	height: 100%;
	margin: 0 auto;
	padding-top: 20px;
	display: flex;
	align-items: flex-start;
}

.main-left-container {
	width: 800px;
}

.article-content {
	border-radius: 10px;
	padding-bottom: 51px;
}

.article-content .top {
	padding: 0 30px;
	padding-top: 40px;
}

.article-content .top .second-tag-m a:first-child {
	margin-left: 0;
}

.article-content .top .second-tag-m a {
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #999;
	margin-left: 20px;
}

.article-content .top .title {
	margin-top: 20px;
	font-family: PingFangSC-Medium;
	font-size: 22px;
	color: #333;
	font-weight: 700;
}

.article-content .top .info {
	margin-top: 20px;
}

.article-content .top .info span:first-child {
	margin-left: 0;
}

.article-content .top .info span {
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #999;
	margin-left: 31px;
}

.article-content .top .info .like {
	padding-left: 20px;
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAWJJREFUOBGdUb9LhVAUTp+JzgVB8fbg1d/QUHP/hKjQGA0t7UFDU4EiiqvjGxtyi2hqK3BxiGrzDfEyfzz7jnhDedeEd+B6zj3fd75zPFdY6zHP85Qsy54A7wuC8GYYxphHFXlJyuV5fgY3V1V1q6qqnz6exANc1x0XRXEuiuIR/CY4Hzwe5bgToPsVsKmu648Q2EbcK7A0gW3bBxj5GGeXOsDvYAef8ALdEVfkmQlhGEpxHNdCI1iapg8Ap1jaBZEgeILiG1bQ8qemaV6LURTNsO1vOrAvkFVFUS4ZEUK3siyr7YMpLOB5zUGHBQVBEIwQ9267Jjcfy7LuHcc5pGtnieheton/xBNM8bIkgMSggO/7G+Apmqa9rySAJ6bur1RM1nlGAIMTlGU5QV09Pgl0doD7oAA4f/9PAvUE2Op6Ey+amDCuYco9AHcMlLD5GS5ZkiQsl7GA58Gnp37mYSvlfgFUCZOefijCWQAAAABJRU5ErkJggg==)
		no-repeat 0;
	background-size: 16px 16px;
}

.article-content .top .info .comment {
	padding-left: 20px;
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAONJREFUOBHFUjEOwjAMbCIUdWWHvV9BPIGhW/MNFhYGNoZmZmeDh7DwAFZeECnpOaqjNrSoAgm8JL7cObFzWfZlCNIbY1a0eO8XU+oJIR7gVYjrrBUYgBrAZUqBuq7X4Btwl4EPwE8RdjmskV3wkz23ELVcOQLJRmsd5sbwS4GUwMSx9TctvHvV/1sIMyBnkTnGBpXixG3dmHELFTkLB8HK3DPyAvgBFierx2jFFQG9PyUAIq+UmltrtxBupJQ759wRRS2dp8Ev6OEQ3wGc8zwvyrJ89g6TZKjACTfvceMt4Q6mDVAsTQ044xzyAAAAAElFTkSuQmCC)
		no-repeat 0;
	background-size: 16px 16px;
}

.article-content .top .info .read {
	padding-left: 20px;
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAVdJREFUOBHFUrFKxEAQTZaN/YGtIEIsLCyuEK5MI36AYGcRjPEDPBEl1YGF5weYC6SwM/gBYpPywOKKKywMiKClkPQJie/FXTmu0ytuYJjZ9+bNTDZrGMs2c36BOI43yrI8Ab5nmuY6+aZp3hEeLcu6dV33jZi23wZpmsosy/ogTuExRA9SyhcWVlW1hWb7SF34jW3bQ8dxKnJtgzAMV5E/wV8xpY8pHyTnDdutYbsh8E34ru/7X2aSJCt5no8B3AO4pggNLUwcYItDnpHfIQ/Al4o/QzzodDo9URTFJQ4TLWYBxQjbQogdOnOFkTZU7QSDLyTOR/AeCW2cTKHneZ/Eoig6ruv6Gem5rkEcoOlYzAD/SiWmRVAGcE93UN884mRiqBkR07yKAbUCF3EFoIuL48W0BoINp1xbrT5VWMur2i61i//Gn5mGsdBD0k0Y//qUZ7XLyb8Bad22Y5CHpisAAAAASUVORK5CYII=)
		no-repeat 0;
	background-size: 16px 16px;
}

.article-content .article-body-m {
	padding: 0 120px;
	margin-top: 69px;
}

.article-content .article-body-m .cover-con {
	text-align: center;
}

.article-content .article-body-m .article-cover {
	max-width: 100%;
}

.article-content .article-body-m .yxl-editor {
	margin-top: 30px;
}

.yxl-editor-article {
	min-height: 48px;
}

.yxl-editor {
	padding-top: 16px;
}

.view, .yxl-editor {
	color: #444;
	font-size: 16px;
	line-height: 1.8;
	word-break: break-all;
}

.article-content .article-body-m #zanCon {
	overflow: hidden;
	margin: 50px auto 0;
	width: 80px;
	height: 80px;
	background-size: 100% 100%;
	text-align: center;
	cursor: pointer;
	background-color: #0066ffa8;
}

.article-content .article-body-m #zanCon .zan-icon {
	display: block;
	margin: 16px auto 0;
	width: 27px;
	height: 27px;
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAbCAYAAACN1PRVAAAAAXNSR0IArs4c6QAAAQlJREFUSA3NVDEOwjAMJMDQkTd05SvwH77BNxhYgJW9iBFGNvhBBQtVOBdFGCttk0g1RIoaO767ODnVDBKHtXYI6AjTGmOeiTTdMAhtMfnYd6MSKqAw5ypunUDVDgFxhnlxAvzbjnzv0r3HjAWK8xhAUi26yDEfvBu+TiJtAoF4w8nlugkXnQfxTJLLOJrUBwBpoym4oA8rcyEG+Q9TxHY2lq2KeIk4EzlvSMLejU/yblBzQjx1OfznjFsHELjSkO+VxL5O1KPYOsQgIacOqSlUxbSusULrE63OzvBCqSV2oEfVEivUxTQMUpI58GaVxjUeSUjrGmtzaInV5viJ2I5UexorvNfNcb8AixM1dYdaFPoAAAAASUVORK5CYII=)
		no-repeat;
	background-size: 100% 100%;
	background-color: #ccc;
}

.article-content .article-body-m #zanCon .active{
	background-color: #0066ff00;
}

.article-content .article-body-m #zanCon #zanNum {
	margin-top: 6px;
	display: block;
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #fff;
	line-height: 16px;
}

.article-content .top .first-tag-m a:first-child {
	margin-left: 0;
}

.article-content .top .first-tag-m {
	margin-top: 20px;
}

.article-content .top .first-tag-m a {
	background: #ddefff;
	border-radius: 6px;
	padding: 2px 7px;
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #6c798c;
	margin-left: 18px;
}

.article-b, .collect, .reward {
	text-align: center;
	font-size: 16px;
}

.article-b {
	width: 298px;
	height: auto;
	margin: 40px auto 0;
	overflow: auto;
}

.collect, .reward {
	width: 124px;
	height: 36px;
	color: #999;
	border: 1px solid #999;
	border-radius: 4px;
	background: transparent;
	background-repeat: no-repeat;
	background-position: 22px;
	text-indent: 22px;
	outline: none;
	box-shadow: none;
}

.collect {
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAAAXNSR0IArs4c6QAAAjdJREFUOBGtUs9rGlEQzltXzCUItoQoJVCIDU3soViLx2D8F2IInqPiD0gvUoIHAyUHb0WtrslfYAmBnFVCTyHRSwhtUglCKHhpCFIQxB+bb+w+2V3WnPLgMTPffDNv3sywmSdOuVw2VSqVU6L4/f61QCAwnEY3TXMQbrPZghDvceVWq9VvNBqXhBsdZgQSlk6nhXa7/ZMxFiVbluVvdrt9BfiIbP0R9AC3kWQT+t9isVijS7qCcYpGGiYKhUIvwUrh7qnYpKcUnwr+r7JoNLowGAy28YVlQE584Q10GXpVkqQNdUQ4HP4Oex0cUNhv6E3oN6IoHjA4MwB8cHzFbQqC0Mzn8/fqBHo9Fou9GI1G9KgTcgdxVRGGBOIWjNlCoXCmDzKylYfuI5HIO/jnKYcJI31wu90nMA4hacQXRsF6DL2KIeYzcF+pVLod7xEl83q9xyhT8ng8Qr1ef7IyVPIJSXbMZvMaJtqiRzR7lEgkXvV6vRvgb/HKHRH0B5UsAvtlsViWs9nsH+7XjB/OB/SKORyOCYETuSQfcYjLMZKaRN1udwXY9bTtpQDFd61wCRofkSskh8OhC3+/4hh68RH2PtkoYhf9OCedOOjnKtTJYDSJ4HBhj66wJ6v9fv8LyB+AjbcbwUfoTx0NTuFBSuSCb3I0XwN5AYQgNr2GhD/QhyU0/ZAueuMkjHzEQQb7JAsUzdTi8fhrVOKzWq3lTCbzT03kejKZnOt0OgFUVsvlcuPRc9+zyEf/TQSaXnHFnAAAAABJRU5ErkJggg==);
}

.collect.active {
	background-color: #0b8bff;
	border: 1px solid #0b8bff;
	color: #fff;
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAAAXNSR0IArs4c6QAAAVVJREFUOBGlk7FKA0EURXcTQSFYmcIiGEJQwVjnAwJ+RGqxsjG/YWedOpAm+AGaSn9AUFkNiGBlYamdrueub2TI7qwJPji8N/feNxNIEkUllaZpFa6Makk0qpSZeH34NDQvX3yKCiTQMzT/9XD+IZb6cO0czdLceaHOQh3u4MAtaDat7jS/r2BuIhzBLmzDDqQwjeP4gp6VZrL3HB7psTrM4AGGMeIpQw/OQMaMpTd6sNjZwNSj4gSmEWIbXkCfaqnSju22s0UOuuwZjhe9SVnb+bnELSI24QkGTgt1ZSzbLMxgNuAdtgoDiPIs0whlFKrBBwR/ePIsU/Mvml/Yw0z41r78kD+bl6Ap+1vzF+3j3DqXl7twaXSdbpmOd879abOLWOzAOcEJjI2JNHmc9ZiyxUVoBDfwCvpmVl2Sec00ecqMnJfrmC04hPWcaYI8y7RCmX/p3+fBJ87PqZKIAAAAAElFTkSuQmCC);
}

.article-comment {
	margin-top: 20px;
	border-radius: 10px;
	padding: 40px 30px 0;
}

.article-comment .reply-area {
	display: flex;
	margin-top: 30px;
	padding-bottom: 40px;
	position: relative;
}

.article-comment .reply-area .author-info {
	width: 52px;
	text-align: center;
}

.article-comment .reply-area .author-info .author-avatar {
	width: 52px;
	height: 52px;
	border-radius: 50%;
	object-fit: cover;
	object-position: center;
}

.article-comment .reply-area .author-info .author-name {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 16px;
	color: #333;
}

.article-comment .reply-area .input-con {
	margin-left: 30px;
}

.article-comment .reply-area .input-con .textarea-con {
	position: relative;
}

.article-comment .reply-area .input-con .textarea-con #replyInput {
	width: 658px;
	height: 116px;
	box-sizing: border-box;
	background: #f9f9fa;
	border: 1px solid #e1ebf1;
	border-radius: 8px;
	outline: none;
	resize: none;
	padding: 18px 10px;
	line-height: 1.3;
	font-size: 16px;
}

.article-comment .reply-area .input-con .textarea-con #inputPlaceHolder
	{
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.article-comment .reply-area .input-con .textarea-con #inputPlaceHolder p
	{
	font-family: PingFangSC-Regular;
	font-size: 20px;
	color: #999;
	line-height: 24px;
}

.article-comment .reply-area .input-con .textarea-con #inputPlaceHolder p+p
	{
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #ccc;
	line-height: 14px;
	margin-top: 10px;
}

.article-comment .reply-area .input-con .reply-author {
	background: #ccc;
	border-radius: 8px;
	width: 120px;
	height: 42px;
	line-height: 42px;
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #fff;
	text-align: center;
	margin-top: 20px;
	cursor: pointer;
}

.article-comment .reply-area .input-con .reply-author.active-btn {
	background-color: #0b8bff;
	color: #fff;
}

.article-comment #commentList {
	margin-top: 40px;
}

.article-comment #commentList .comment-item {
	margin-top: 40px;
	padding-bottom: 40px;
	border-bottom: 1px solid #f3f4f5;
	position: relative;
}

.article-comment #commentList .comment-item .item-content .content-left
	{
	display: inline-block;
}

.article-comment #commentList .comment-item .item-content .content-left img
	{
	width: 36px;
	height: 36px;
	border-radius: 50%;
}

.article-comment #commentList .comment-item .item-content .content-right
	{
	margin-top: 8px;
	display: inline-block;
	vertical-align: top;
	margin-left: 20px;
	font-size: 16px;
	/* width: 680px; */
	align-items: flex-start;
}

.article-comment #commentList .comment-item .item-content .content-right .right-top
	{
	width: 100%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
}

.article-comment #commentList .comment-item .item-content .content-right .right-top .top-left
	{
	width: 500px;
	text-align: justify;
}

.article-comment #commentList .comment-item .item-content .content-right .right-top .top-left .nickname
	{
	font-family: PingFangSC-Medium;
	font-size: 16px;
	color: #333;
	line-height: 20px;
	font-weight: 700;
	line-height: 1.4;
}

.article-comment #commentList .comment-item .item-content .content-right .right-top .top-left .active
	{
	font-family: PingFangSC-Medium;
	font-size: 16px;
	color: #66b1ff;
	line-height: 20px;
	font-weight: 700;
	line-height: 1.4;
}



.article-comment #commentList .comment-item .item-content .content-right .right-top .top-left .comment-text
	{
	font-family: PingFangSC-Medium;
	font-size: 16px;
	color: #333;
	line-height: 20px;
	line-height: 1.4;
	font-weight: 400;
	word-break: break-all;
}

.article-comment #commentList .comment-item .item-content .content-right .right-top .comment-statistics a
	{
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #666;
	line-height: 14px;
	padding-left: 20px;
}

.article-comment #commentList .comment-item .item-content .content-right .right-top .comment-statistics .comment-btn
	{
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAMRJREFUOBFjYKAQMIL0p6ene/3//38BkCkK4hMBXjMyMibMnDlzGxNIMYmaQVpEoXoYwAaABECiJAKwHpgBJOpFKGdBMCEsoL/QhVD4wPBC4WMYgK4ARTUWDn28gM9VA+8FWBi8xhI+hITAesAGgJIlUDUuQ75gMQmclEHi4LyArCAtLe0/lP8TSP9iYmKq//fv35RZs2b9RlYHY2MEIlTiG9BVS1hYWKqmTp36FqYYG41hAFDj0r9//3bNmTPnEjYN6GIAUPU1JfCzFm4AAAAASUVORK5CYII=)
		no-repeat 0;
	background-size: 14px 14px;
}

.article-comment #commentList .comment-item .item-content .content-right .right-top .comment-statistics .like-btn
	{
	margin-right: 30px;
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAQZJREFUOBGlUjEOgkAQ5E5IjL6BJ+gXbPiDPyCB0tjY0VvYUBAeJImVnT7AgJ2GgAkagrMo5IgHMXDJsntzs8Pu3jGlZTmOMw7D8IDjGezi+74uo3IZSFgURWs4SqaVfdzvVypg27ZeFMVGoEdC3AilAnmeb8GaCMz/BSzLWuDvSyFZYYxdgTEyEaeYYVgqPJmSJMkojuM9wjntuxbnfOV53k7FpO8gTrvILWcvwmkGZTKuiRmGUVbSktCA0c6JAOkQG8yWjaZp/QUw1Nh13XBIBeeqsF4tVP33rgAtlP2TQD110zS1IAjqfVWizOMN1AIcarcv6Zmm6UOWIGLgZ3jqRxEbFL8Bz9lRarLUHIgAAAAASUVORK5CYII=)
		no-repeat 0;
	background-size: 14px 14px;
}

.article-comment #commentList .comment-item .item-content .content-right .right-top .comment-statistics .like-btn-selected {
    background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAARBJREFUOBGlUjFuwkAQnHWOiIQ00KPwgaTJA0LNB3hFGgQFb0CBOhVPoUukRJHooKRAhMJREJKFMMWya2NimTNYcJJ1e7Mz493bI6SsSp/z7i8+mfEglKnXorKN6thAxUTc3IlBwDqNZzUovXJZxO29iPCzjxOB1cBndIR3G+NmN7jr8rP8vR4TazhnZtIvgYOqAzaTCYwmVi6uPOCdgcck8eBMaHhN6pmvbyzAKBwQTgDE2CjFicQyJqrdh5Wc0AZpdjAKDbKwLZyb6wsMiLB0X2h2dgVyyeOoKOs7iJJH9qD/sytwOOxfDYL5a/D0xrmP6f9ZsdS1m4DmjTytP+mpOF7CTxXEE4S1MRjGoYviLXapSwsVU2LBAAAAAElFTkSuQmCC) no-repeat 0;
    background-size: 14px 14px;
}

.article-comment #commentList .comment-item .item-content .content-right .right-bottom
	{
	margin-top: 10px;
}

.article-comment #commentList .comment-item .item-content .content-right .right-bottom span
	{
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #999;
	padding-right: 15px;
}

.article-comment #commentList .comment-item .item-content .content-right .right-bottom a
	{
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #999;
	padding: 0 0 0 17px;
	position: relative;
	margin: 0;
}

.article-comment #commentList .comment-item .orinal-comment span {
	word-break: break-all;
}

.article-comment #commentList .comment-item .orinal-comment .active{
	color: #66b1ff;
}

.article-comment #commentList .comment-item .orinal-comment a {
	font-family: PingFangSC-Semibold;
	font-size: 16px;
	color: #151515;
	line-height: 24px;
	font-weight: 700;
}

.article-comment #commentList .comment-item .reply-comment {
	margin-top: 30px;
	/* display: flex; */
	align-items: flex-end;
	font-size: 0;
	margin-left: 82px;
	display: none;
}

.article-comment #commentList .comment-item .expand{
	display: flex;
}

.article-comment #commentList .comment-item .orinal-comment {
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #666;
	line-height: 24px;
	background: #f9f9fa;
	border-radius: 8px;
	padding: 20px 31px 20px 20px;
	margin-left: 56px;
	margin-top: 30px;
}

.article-comment #commentList .comment-item .reply-comment .reply-textarea-con
	{
	position: relative;
	width: 550px;
}

.article-comment #commentList .comment-item .reply-comment .reply-textarea-con .reply-comment-input
	{
	width: 550px;
	height: 116px;
	box-sizing: border-box;
	background: #f9f9fa;
	border: 1px solid #e1ebf1;
	border-radius: 8px;
	-webkit-appearance: none;
	appearance: none;
	outline: none;
	resize: none;
	padding: 18px 10px;
	line-height: 1.3;
	font-size: 16px;
}

.article-comment #commentList .comment-item .reply-comment .reply-textarea-con .reply-comment-placeHolder
	{
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.article-comment #commentList .comment-item .reply-comment .reply-comment-btn
	{
	background: #ccc;
	border: none;
	border-radius: 8px;
	width: 88px;
	height: 42px;
	line-height: 42px;
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #fff;
	text-align: center;
	cursor: pointer;
	margin-left: 20px;
	outline: none;
}

.article-comment #commentList .comment-item .reply-comment .reply-comment-btn.active-btn
	{
	background-color: #0b8bff;
	color: #fff;
}

.main-right-container {
	width: 360px;
	margin-left: 20px;
	border-radius: 10px;
}

.main-right-container .base-info-m {
	text-align: center;
	padding-top: 48px;
	border-radius: 10px;
}

.main-right-container .base-info-m .top {
	padding: 0 30px;
}

.main-right-container .base-info-m .avatar-con {
	display: block;
	font-size: 0;
}

.main-right-container .base-info-m .avatar {
	width: 82px;
	height: auto;
	border-radius: 50%;
}

.main-right-container .base-info-m .name {
	font-family: PingFangSC-Medium;
	font-size: 20px;
	color: #333;
	margin-top: 20px;
	font-weight: 700;
	line-height: 20px;
}

.main-right-container .base-info-m .desc {
	font-family: PingFangSC-Regular;
	font-size: 14px;
	line-height: 24px;
	color: #999;
	margin-top: 8px;
}

.main-right-container .base-info-m .tool-m {
	display: flex;
	margin: 30px 0;
}

.main-right-container .base-info-m .tool-m .selected {
    color: #ccc!important;
    background-color: #f3f4f5!important;
}

.main-right-container .base-info-m .tool-m a+a {
	margin-left: 20px;
}

.main-right-container .base-info-m .tool-m a {
	display: block;
	background: #0b8bff;
	border-radius: 8px;
	width: 140px;
	height: 42px;
	line-height: 42px;
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #fff;
}

.main-right-container .base-info-m .statistics {
	padding: 25px 50px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: space-between;
	border-top: 1px solid #f3f4f5;
}

.main-right-container .base-info-m .statistics a {
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #0b8bff;
	line-height: 14px;
}

.qcode {
	position: relative;
	width: 360px;
	height: 100px;
	margin-top: 20px;
	border-radius: 10px;
	overflow: hidden;
}

.main-right-container .recommend-theme-read-author .recommend-reading-m
	{
	padding: 0 20px 30px;
	margin-top: 40px;
	position: relative;
}

.main-right-container .recommend-theme-read-author .recommend-reading-m .read-title-con
	{
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
}

.main-right-container .recommend-theme-read-author .recommend-reading-m .read-title-con .title
	{
	font-family: PingFangSC-Medium;
	font-size: 18px;
	color: #333;
	line-height: 18px;
	font-weight: 700;
}

.main-right-container .recommend-theme-read-author .recommend-reading-m .read-title-con a
	{
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #999;
	padding-right: 15px;
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAA50lEQVRYR9XXwQ2DMAwF0M8E7QZdoSO1l8BKcGo3YAM6QkfoJq4igcSN7/hHEVwT8R9GspMOjZ+ucT7OA5im6Z5S+qorRlUgh5vZYmbzMAxPJYICjOP4A3DLwWb2UiIowFqBD4CLGkEBcmgtBA2ohXABaiDcADWiCKBEFANUiBBAgQgDoggJIIJQAxYA13VWvPu+fxzNDQlgG1be8IwLAyLhYUA0PARQhBcDVOFFAGW4G6AOdwFqhNOAWuE0YH8oBUB1uKMOuK1TjWh3HpyZ9sqG0xXYhk2zi4nni7x7qV/gfalnf3PAH39l5iEBrzswAAAAAElFTkSuQmCC)
		no-repeat 100% #fff;
	background-size: 14px auto;
}

.main-right-container .recommend-theme-read-author .recommend-reading-m #readList
	{
	margin: 30px 0 0;
	padding: 0;
}

.main-right-container .recommend-theme-read-author .recommend-reading-m #readList li:first-child
	{
	margin-top: 0;
}

.main-right-container .recommend-theme-read-author .recommend-reading-m #readList li
	{
	list-style: none;
	margin-top: 12px;
	padding: 0 0 0 10px;
	position: relative;
}

.main-right-container .recommend-theme-read-author .recommend-reading-m #readList li a
	{
	display: block;
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #666;
	line-height: 21px;
}

.main-right-container .recommend-theme-read-author .recommend-author-m {
	margin-top: 40px;
	padding: 0 20px 40px;
}

.main-right-container .recommend-theme-read-author .recommend-author-m .author-title
	{
	font-weight: 700;
	font-family: PingFangSC-Medium;
	font-size: 18px;
	color: #333;
	line-height: 18px;
}

.main-right-container .recommend-theme-read-author .recommend-author-m #authorList
	{
	display: flex;
	flex-wrap: wrap;
	padding: 0 18px;
}

.main-right-container .recommend-theme-read-author .recommend-author-m #authorList .author-item
	{
	width: 68px;
	margin-top: 38px;
	margin-left: 40px;
	font-size: 0;
}

.main-right-container .recommend-theme-read-author .recommend-author-m #authorList .author-item:nth-child(3n+1)
	{
	margin-left: 0;
}

.main-right-container .recommend-theme-read-author .recommend-author-m #authorList .author-item img
	{
	width: 68px;
	height: 68px;
	border-radius: 50%;
}

.main-right-container .recommend-theme-read-author .recommend-author-m #authorList .author-item p
	{
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #333;
	line-height: 14px;
	margin-top: 14px;
	width: 100%;
	text-align: center;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	height: 15px;
}

.collect.active {
	background-color: #0b8bff;
	border: 1px solid #0b8bff;
	color: #fff;
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAAAXNSR0IArs4c6QAAAVVJREFUOBGlk7FKA0EURXcTQSFYmcIiGEJQwVjnAwJ+RGqxsjG/YWedOpAm+AGaSn9AUFkNiGBlYamdrueub2TI7qwJPji8N/feNxNIEkUllaZpFa6Makk0qpSZeH34NDQvX3yKCiTQMzT/9XD+IZb6cO0czdLceaHOQh3u4MAtaDat7jS/r2BuIhzBLmzDDqQwjeP4gp6VZrL3HB7psTrM4AGGMeIpQw/OQMaMpTd6sNjZwNSj4gSmEWIbXkCfaqnSju22s0UOuuwZjhe9SVnb+bnELSI24QkGTgt1ZSzbLMxgNuAdtgoDiPIs0whlFKrBBwR/ePIsU/Mvml/Yw0z41r78kD+bl6Ap+1vzF+3j3DqXl7twaXSdbpmOd879abOLWOzAOcEJjI2JNHmc9ZiyxUVoBDfwCvpmVl2Sec00ecqMnJfrmC04hPWcaYI8y7RCmX/p3+fBJ87PqZKIAAAAAElFTkSuQmCC);
}

.letter-modal-box {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 100;
    display: none;
}

.show-box{
    display: block;
}

.letter-modal-box .letter-mask {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,.4);
}

.letter-modal-box .letter-modal {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 600px;
    background-color: #fff;
    border-radius: 4px;
}

.letter-modal-box .letter-modal .letter-header {
    position: relative;
    height: 70px;
    line-height: 70px;
    border-bottom: 1px solid #ccc;
}

.letter-modal-box .letter-modal .letter-header .header-txt {
    font-size: 22px;
    color: #333;
    font-weight: 700;
    padding-left: 30px;
}

.letter-modal-box .letter-modal .letter-header .icon-add {
    position: absolute;
    top: 0;
    right: 30px;
    color: #999;
    transform: rotate(45deg);
    cursor: pointer;
}

.letter-modal-box .letter-modal .box-cont {
    padding: 40px 30px;
}

.letter-modal-box .letter-modal .box-cont .label {
    margin-bottom: 20px;
    font-size: 18px;
    color: #999;
    font-weight: 700;
}

.letter-modal-box .letter-modal .box-cont .label .name {
    display: inline-block;
    margin-left: 10px;
    margin-right: 10px;
    color: #0b8bff;
}

.letter-modal-box .letter-modal .box-cont .letter-content {
    box-sizing: border-box;
    width: 540px;
    height: 170px;
    padding: 16px;
    background-color: #ffffff;
    border-radius: 4px;
    resize: none;
    border: 1px solid #ccc;
    font-size: 16px;
    color: #333;
    outline: none;
}

.letter-modal-box .letter-modal .box-cont .opt-btns {
    margin-top: 20px;
    clear: both;
    overflow: hidden;
}

.letter-modal-box .letter-modal .box-cont .opt-btns .send-btn:hover {
    opacity: .8;
    filter: Alpha(opacity=80);
}

.letter-modal-box .letter-modal .box-cont .opt-btns .send-btn {
    float: right;
    width: 120px;
    height: 40px;
    margin-left: 44px;
    border-radius: 100px;
    background-color: #0b8bff;
    font-size: 16px;
    color: #fff;
    cursor: pointer;
	border: none;
	outline: none;
}

.letter-modal-box .letter-modal .box-cont .opt-btns .cancel-btn {
    float: right;
    font-size: 16px;
    color: #666;
    line-height: 40px;
    cursor: pointer;
}
</style>
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
	</div>
	<div class="main-container" id="article">
		<div class="main-left-container">
			<div class="article-content">

				<!-- 头部信息 -->
				<div class="top">
					<div class="second-tag-m">
						<c:forEach items="${pa.articleLabels}" var="lable"
							varStatus="status">
							<a target="_blank" href="#?id=108"
								data-tag-id="${lable.psycho_label_id}">
								#${lable.psycho_label_name}</a>
						</c:forEach>
					</div>

					<p class="title" data-id="${pa.articleId}">${pa.articleTitle}</p>

					<!-- 文章分类 -->
					<div class="first-tag-m">
						<c:if test="${pa.psychoCategory.psycho_category_name != null}">
						<a data-tag="${pa.psychoCategory.psycho_category_id}" href="#">
							${pa.psychoCategory.psycho_category_name} </a>
						</c:if>
					</div>

					<div class="info">
						<span>发布时间：
						<fmt:formatDate value="${pa.pubTime}" pattern="yyyy-MM-dd"/>
						</span> <span class="like">${likecount}赞</span>
						<span class="comment">${pa.commentsNum}评论</span> <span
							class="read">{{commentnum}}阅读</span>
					</div>
				</div>

				<!-- 文章主体 -->
				<div class="article-body-m">
					<div class="cover-con">
						<img class="article-cover"
							src="${APP_PATH}/${pa.articleImg}"
							alt="文章封面">
						<%-- ${pa.articleImg } --%>
					</div>
					<div class="yxl-editor">
						<div class="yxl-editor-article ">${pa.content}</div>



					</div>
					<!-- 文章结尾 -->
					
					<div id="zanCon">
							<span class="zan-icon"></span>
							<span id="zanNum">${likecount}</span>
							<span id="iszan" data-id="${islike}" style="disply:none"></span>
					</div>
					
					<div class="article-b">
						<!-- 已打赏或已收藏添加 active -->

						<button class="collect" :class="{active:iscollect==1}" @click="doClickCollect()">收藏</button>
					</div>
				</div>


				<div class="article-comment">
					<div class="reply-area">
						<div class="author-info">
						<!-- pa.articleUser.psychouser_head_portrait -->
							<img src="${APP_PATH }/${pa.articleUser.psychouser_head_portrait }" alt="作者头像" 
								class="author-avatar">
							<p class="author-name" data-id="${pa.articleUser.psychouser_id }">${pa.articleUser.psychouser_name}</p>
						</div>


						<div class="input-con"
							data-action="//www.xinli001.com/ajax/article-comment-add.json"
							data-method="post" data-object_id="100458798"
							data-reply_object_id="0">
							<div class="textarea-con">
								<textarea name="replyInput" id="replyInput" maxlength="200" v-model="inputValue"></textarea>
								<div id="inputPlaceHolder" style="display: block;">
									<p>TA在等你的回复～</p>
									<p>（不超过200字）</p>
								</div>
							</div>
							<div class="reply-author active-btn" @click="addComment($event)">提交回复</div>
						</div>
					</div>

					<div id="commentList">

						<div class="comment-item" v-for="(comment, index) in comments" :key="index">
							<div class="item-content">

								<!-- 头像 -->
								<a target="_blank" href="#" class="content-left"> 
								<img v-bind:src="'${APP_PATH }/'+comment.comment_user.psychouser_head_portrait" />
								</a>


								<div class="content-right">
									<div class="right-top">
										<div class="top-left">
											<span class="nickname" :data-id="comment.comment_user.psychouser_id" v-if="curuserid!=comment.comment_user.psychouser_id">{{comment.comment_user.psychouser_name}}
												：</span>
											<span class="nickname active" :data-id="comment.comment_user.psychouser_id" v-if="curuserid==comment.comment_user.psychouser_id">{{comment.comment_user.psychouser_name}}
												：</span>	
											<span class="comment-text">{{comment.article_comment_pulcontent}}</span>
										</div>

										<div class="comment-statistics" :data-pk="comment.article_comment_id">
											<a href="javascript:void(0)" class="like-btn like-btn-selected" v-if="likecomment.indexOf(comment.article_comment_id) >= 0" @click="doCommentlike($event)" :data-id="comment.article_comment_id"><span>{{comment.article_comment_likes_num}}</span>赞</a> 
											<a href="javascript:void(0)" class="like-btn" v-if="likecomment.indexOf(comment.article_comment_id) < 0" @click="doCommentlike($event)" :data-id="comment.article_comment_id"><span>{{comment.article_comment_likes_num}}</span>赞</a> 
											<a href="javascript:void(0)" class="comment-btn" @click="tag=index+1">评论</a>
											<a href="javascript:void(0)" v-if="tag==index+1" class="hide-btn" @click="tag=0">收起</a>
										</div>
									</div>

									<div class="right-bottom">
										<span>{{comment.article_comment_pultime}}</span> 
										<!-- <a href="#" class="ico-jubao" data-pk="3568501">举报</a> -->
									</div>
								</div>

							</div>

							<!-- 这条评论的原评论 -->
							<div class="orinal-comment" v-if="comment.article_p_comment!=null">
								<span>回复</span> 
								<a target="_blank" href="#" :data-id="comment.article_p_comment.comment_user.psychouser_id">
								@<span :class="{active:curuserid==comment.article_p_comment.comment_user.psychouser_id}">{{comment.article_p_comment.comment_user.psychouser_name}}：</span>
								</a> 
								<span>{{comment.article_p_comment.article_comment_pulcontent}}</span>
							</div>

							<!-- 针对评论的评论框 -->

							<div class="reply-comment" :class="{expand: tag == index+1}">
								<div class="reply-textarea-con">
									<textarea name="replyCommentInput" class="reply-comment-input"
										maxlength="200" v-model="inputValue"></textarea>
									<div class="reply-comment-placeHolder">
										<p>回复TA～</p>
										<p>（不超过200字）</p>
									</div>
								</div>
								<button class="reply-comment-btn active-btn" @click="addComment($event)" :data-pid="comment.article_comment_id">回复</button>
							</div>

						</div>




					</div>

				</div>

			</div>
		</div>


		<div class="main-right-container">
			<!-- 作者基本信息 -->
			<div class="base-info-m white-bg">
				<div class="top">
					<a target="_blank" href="${APP_PATH}/user/toUserIndex.htm?userid=${pa.articleUser.psychouser_id}" @click="" class="avatar-con"> 
					<img class="avatar" src="${APP_PATH }/${pa.articleUser.psychouser_head_portrait }" alt="个人头像">
					</a>
					<p class="name">${pa.articleUser.psychouser_name}</p>
					<p class="desc">${pa.articleUser.psychouser_intro }</p>
					<div class="tool-m" v-if="uid!=mtoid">
						<a id="btn-follow" data-userid="${pa.articleUser.psychouser_id }" :class="{selected:isfollow=='已关注'}" href="javascript:;" @click="dofollow($event)">{{isfollow}}ta</a>
						<a id="btn-message" href="javascript:;" @click="openMessage">私信</a>
					</div>
				</div>
				<div class="statistics">
					<a target="_blank" href="#wz">文章 ${pa.articleUser.articleNum}</a> <a target="_blank"
						href="#hd2">问答 ${pa.articleUser.questionAnswerNum}</a> <a target="_blank" href="#">获赞 ${pa.articleUser.zanNum}</a>
				</div>
			</div>


			<!-- 咨询师信息 -->

			<!-- 推荐主题、相关阅读、相关作者 -->
			<div class="recommend-theme-read-author white-bg">

				<!-- 推荐主题 -->
				<!-- <div class="recommend-theme-m">
						<div class="title-con">
							<span class="title">推荐主题</span>
							<a target="_blank" href="//m.xinli001.com/article/theme/list" class="count">241个精选主题</a>
						</div>
						<div class="theme-item">
							<div class="theme-bg">
								<a target="_blank" href="https://m.xinli001.com/article/theme/detail?id=11">
									<img src="https://ossimg.xinli001.com/20180207/15f8cd745b767e89ca0ff33118725767.jpg!80" alt="主题背景">
									<p> #朋友，室友</p>
								</a>
							</div>

							<div class="desc-con">
								<a target="_blank" href="https://m.xinli001.com/article/theme/detail?id=11">
									<p>朋友，室友，让我欢喜让我忧</p>
								</a>

								<button id="attentionBtn" data-theme_id="11" data-is_follow="0">
									关注 </button>

							</div>
						</div>

					</div>

				<!-- 相关阅读
					<div class="recommend-reading-m">
						<div class="read-title-con">
							<span class="title">相关阅读</span>

							<a target="_blank" href="https://www.xinli001.com/info/tag_2206">人际社交</a>
						</div>
						<ul id="readList">
							<li><a target="_blank" href="//www.xinli001.com/info/100458798">为什么说服一个人那么难？</a>
							</li>
							<li><a target="_blank" href="//www.xinli001.com/info/100458734">高质量的亲密关系，靠面对面谈恋爱</a>
							</li>
							<li><a target="_blank" href="//www.xinli001.com/info/100458680">想提高你的沟通能力和技巧，这是我的建议</a>
							</li>
							<li><a target="_blank" href="//www.xinli001.com/info/100458630">有没有一个人，可以分享你的“负面情绪”？</a>
							</li>
							<li><a target="_blank" href="//www.xinli001.com/info/100458520">人际关系中的“博弈论”</a>
							</li>
						</ul>
					</div>

					<!-- 相关作者 -->
				<div class="recommend-author-m">
					<p class="author-title">相关作者</p>
					<div id="authorList">
						<a target="_blank" href="#" class="author-item"> <!-- <img src="https://image.xinli001.com//20151013/170505/133406.jpg!80" "="" alt=" 加载头像失败"> -->
							<img src="" alt=" 加载头像失败">
							<p>袁麟翥</p>
						</a> <a target="_blank" href="#" class="author-item"> <img
							src="" alt=" 加载头像失败">
							<p>溪石Jesher</p>
						</a> <a target="_blank" href="#" class="author-item"> <img
							src="" alt=" 加载头像失败">
							<p>卢溪</p>
						</a>
					</div>
				</div>
			</div>
		</div>

		<div class="letter-modal-box" :class="{'show-box':message==1}">
		    <div class="letter-mask"></div>
		    <div class="letter-modal">
		        <div class="letter-header">
		            <h4 class="header-txt">私信</h4>
		            <i class="iconfont icon-add" id="letter-close-btn"></i>
		        </div>
		        <div class="box-cont">
		            <p class="label">给<span class="name">${pa.articleUser.psychouser_name}</span>一条私信</p>
		            <textarea class="letter-content" v-model="messageValue"></textarea>
		            <div class="opt-btns">
		                <button class="send-btn" data-id="${pa.articleUser.psychouser_id}" @click="sendMessage">发送</button>
		                <span class="cancel-btn" @click="message=0">取消</span>
		            </div>
		        </div>
		    </div>
		</div>

	</div>

	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH }/js/vue.js"></script>
	<script src="${APP_PATH }/js/axios.js"></script> 
	<script src="${APP_PATH }/js/elementui.js"></script>
	<script type="text/javascript">
	var path = '<%=basePath%>';
	var uu="${sessionScope.loginUser}";
	var uid = "${sessionScope.loginUser.psychouser_id}";
	var fromName = "${sessionScope.loginUser.psychouser_name}";
  	var mtoid = "${pa.articleUser.psychouser_id}";
	/* 获取本文章的ID */
	var articleid = $(".title").attr("data-id");
	
	var article = new Vue({
		  el: '#article',
		  data () {
		    return {
		      comments: [],
		      iscollect: 0,
		      inputValue:'',
		      commentnum:0,
		      tag:0,
		      likecomment:[],
		      curuserid:0,
		      isfollow:"关注",
		      message:0,
		      messageValue:"",
		      websocket:null,
		      path:'<%=basePath%>',
		      uu:"${sessionScope.loginUser}",
		      uid:"${sessionScope.loginUser.psychouser_id}",
		      fromName:"${sessionScope.loginUser.psychouser_name}",
		      mtoid:"${pa.articleUser.psychouser_id}"
		    }
		  },
		  created() {
		      this.getCommentList();
		      this.getCollectStatus();
		      this.getuserid();
		      this.getlikecomment();
		      this.isFollow();
		    },
		    methods: {
		    	openMessage(){
		    		if(this.curuserid==0){
		    			alert("请登录");
		    			return
		    		}
		    		
		    		this.message=1;
		    		  //不同浏览器的WebSocket对象类型不同
	    			//alert("ws://" + path + "/ws?uid="+uid);
	    			if ('WebSocket' in window) {
	    				this.websocket = new WebSocket("ws://" + path + "ws.do");
	    				console.log("=============WebSocket");
	    				//火狐
	    			} else if ('MozWebSocket' in window) {
	    				this.websocket = new MozWebSocket("ws://" + path + "ws.do");
	    				console.log("=============MozWebSocket");
	    			} else {
	    				this.websocket = new SockJS("http://" + path + "ws/sockjs.do");
	    				console.log("=============SockJS");
	    			}
	    			
	    			this.websocket.onopen = function(event) { 
	    				console.log("WebSocket:已连接");
	    			}
	    			if(this.websocket==undefined||this.websocket==null){
						//alert('WebSocket connection not established, please connect.');
						alert('您的连接已经丢失，请退出聊天重新进入');
						return;
					}
		    	},
		    	
		    	sendMessage(){
					//获取用户要发送的消息内容
					let msg = this.messageValue.trim();
					if(msg==""){
						alert("请输入内容");
						return;
					}else{
						var data={};
						data["from"]=this.uid;
						data["fromName"]=this.fromName;
						data["to"]=parseInt(this.mtoid);
						data["text"]=msg;
						//发送消息
						this.websocket.send(JSON.stringify(data));
						//发送完消息，清空输入框
						this.messageValue="";
						this.message=0;
					    this.$message('私信发送成功');
					}
		    	},
		    	
		    	dofollow(e){
					  let action=0;
					  if(this.isfollow=="关注"){
						  action=1;
					  }
					  axios({
					      url: "${APP_PATH}/user/doFollow.do",
					      method: "get",
					      params:{
					    	  followuserid:e.target.dataset.userid,
					    	  action:action
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		if(action==1){
					    			this.isfollow="已关注";
					    		}else{
					    			this.isfollow="关注";
					    		}
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
		    	
		    	isFollow(){
					  axios({
					      url: "${APP_PATH}/user/doIsFollow.do",
					      method: "get",
					      params:{
					    	  followuserid:parseInt($(".author-name").attr("data-id"))
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		if(res.data.data){
					    			this.isfollow="已关注";
					    		}
					    	}else{
					    		console.log(res.data.message);
					    	}
					    });
				  },
		    	getuserid(){
		    		axios({
					      url: "${APP_PATH}/user/doUserId.do",
					      method: "get",
					      params:{
					    	  articleid:articleid
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.curuserid = res.data.data;
					    	}
					    });
		    	},
		    	
		    	getlikecomment(){
		    		axios({
					      url: "${APP_PATH}/article/dolikeComment.do",
					      method: "get",
					      params:{
					    	  articleid:articleid
					      }
					    }).then(res => {
					    	if(res.data.success){
						    	this.likecomment = res.data.data;
					    	}else{
					    		console.log(res.data.message);
					    	}
					    });
		    	},
		    	
		    	getCommentList(){
		    		axios({
				      url: "${APP_PATH}/article/doComment.do",
				      method: "get",
				      params:{
				    	  articleid:articleid
				      }
				    }).then(res => {
				    	this.comments = res.data.data;
				    	/* alert("评论数："+this.comments.length); */
				    	this.commentnum = this.comments.length;
				    });
		    	},
		    	/* 获取当前用户对当前文章的是否收藏状态 */
		    	getCollectStatus(){
		    		axios({
					      url: "${APP_PATH}/user/doIsCollect.do",
					      method: "get",
					      params:{
					    	  toid:articleid,
					    	  typeid:1
					      }
					    }).then(res => {
					    	if(res.data.success){
						    	this.iscollect=res.data.data;
					    	}else{
					    		console.log(res.data.message);
					    	}
					    });
		    	},
		    	
		    	/* 收藏功能通过vue处理如此的简单，手动泪目 */
		    	doClickCollect(){
		    		axios({
					      url: "${APP_PATH}/user/doCollect.do",
					      method: "get",
					      params:{
					    	  toid:articleid,
					    	  typeid:1,
					    	  iscollect:this.iscollect
					      }
					    }).then(res => {
					    	if(res.data.success){
						    	this.iscollect=res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
		    	},
		    	
		    	addComment(e){
		    		 // 非空判断
		            if (this.inputValue.trim() == '') {
		            	this.inputValue="";
		              // 提示用户
		              /* this.$message.warning('请输入内容'); */
		               alert("请输入内容");
		            }else{
			    		var params={
		    				articleid:articleid,
					    	inputValue:encodeURI(this.inputValue.trim())
			    		};
			    		if(e.target.dataset.pid!=null){
			    			params.pcommentid=e.target.dataset.pid;
			    		};
		            	 axios({
						      url: "${APP_PATH}/article/doAddComment.do",
						      method: "POST",
						      params:params
						    }).then(res => {
						    	if(res.data.success){
						    		this.inputValue="";
						    		this.getCommentList();
						    		this.tag=0
						    	}else{
						    		alert(res.data.message);
						    	}
						    });
		            }
		    	},
		    	
		    	/* 评论点赞 */
		    	doCommentlike(e){
		    		/* 这里要类型转换 parseInt(e.target.dataset.id)*/
		    		var action;
		    		if(this.likecomment.indexOf(parseInt(e.target.dataset.id))>=0){
		    			action=0;
		    		}else{
		    			action=1;
		    		}
		    		axios({
					      url: "${APP_PATH}/user/doLike.do",
					      method: "post",
					      params:{
					    	  mainid:articleid,
					    	  toid:e.target.dataset.id,
					    	  typeid:3,
					    	  maintype:1,
					    	  action:action
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.getCommentList();
					    		this.getlikecomment();
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
		    	}
		    	
		    }
		});
	
		$(function() {
			updatereadnum();
			updatezan();
		});
		
		/* 处理当前用户赞 
		同步请求获取用户是否点赞当前文章的状态，
		-1表示未登录 0表示未点赞，1表示已点赞
		并存在一个不显示的页面标签#iszan内
		在页面加载完成后执行jquery方法,修改点赞按钮的状态
		*/
		function updatezan(){
			var state = $("#iszan").attr("data-id");
			if(state==0||state==-1){
				$(".zan-icon").addClass("active");
			}
		}
		
		/* 阅读次数 */
		function updatereadnum() {
			/* var num = $(".read").html().replace(/\D+/g, ""); */
			/* alert(num); */
			/* num = parseInt(num); */
			// alert(num);
			/* $(".read").html(num + "阅读"); */
			
			axios({
			      url: "${APP_PATH}/article/updateReadNum.do",
			      method: "get",
			      params:{
			    	  articleid:articleid
			      }
			    }).then(res => {
			    	var nownum=res.data.data;
			    	$(".info .read").html(nownum+"阅读");
			    });
		}

			
		/*点击点赞按钮
		根据页面标签#iszan判断用户是否登录
		和是否点赞当前文章
		若登录则异步请求进行点赞操作或取消点赞操作
		同时需要修改点赞按钮样式
		以及页面标签#iszan的值
		*/
		$("#zanCon").click(function() {
			/* 获取当前用户是否点赞该文章 */
			var state = $("#iszan").attr("data-id");
			if(state==-1){
				console.log("请登录！！！");
			var action;	
			/* 用户已点赞当前文章 */
			}else{
				if(state==1){
					action=0;
				/* 用户未点赞或取消了对当前文章的点赞 */
				}else if(state==0){
					action=1;
				}
			    axios({
				      url: "${APP_PATH}/user/doLike.do",
				      method: "post",
				      params:{
				    	  toid:articleid,
				    	  typeid:1,
				    	  action:action,
				      }
				    }).then(res => {
				    	var status = res.data.success;
				    	if(status==true){
				    		var count = res.data.data;
				    		$(".info .like").html(count+"赞");
				    		$(this).find("#zanNum").html(count);
				    		if ($(this).find(".zan-icon").hasClass("active")) {
				    			$("#iszan").attr("data-id",1);
				 				$(this).find(".zan-icon").removeClass("active");
				    		} else {
				 				$("#iszan").attr("data-id",0);
				 				$(this).find(".zan-icon").addClass("active");
				 		
				 			} 
				    	}
				    	
				    }); 	
			}
		})


		// 评论文章的按钮
		/* $(".reply-author").click(function() {
			var authorid = 345;
			var content = $("#replyInput").val();
			if (content == null || content == "") {
				alert("内容不能为空！！")
			} else {
				alert("作者ID：" + authorid + content);
			}

		}) */

		// 评论的评论按钮
		/* $(".comment-btn").click(
				function() {
					if ($(this).hasClass("expand")) {
						$(this).removeClass("expand");
						$(this).parents(".item-content").siblings(
								".reply-comment").find(".reply-comment-input")
								.val("");
						$(this).parents(".item-content").siblings(
								".reply-comment").hide();
					} else {
						$(this).addClass("expand");
						$(this).parents(".item-content").siblings(
								".reply-comment").attr("style", "");
						$(this).parents(".comment-item").siblings().find(
								".comment-btn").removeClass("expand");
						$(this).parents(".item-content").siblings().find(
								".reply-comment-input").val("");
						$(this).parents(".comment-item").siblings().find(
								".reply-comment").hide();
						$(this).parents(".item-content").siblings(
								".reply-comment").show();
					}

				}) */

		// 评论的评论的提交按钮
		$(".reply-comment-btn").click(
				function() {
					var comment = $(this).prev(".reply-textarea-con").find(
							".reply-comment-input").val();
					if (comment == null || comment == "") {
						window.alert("内容不能为空！！！");
					} else {
						var name = $(this).parents(".comment-item").find(
								".nickname").attr("data-id");
						window.alert("评论对象用户id：" + name + " " + comment);
					}
				})

	</script>
</body>
</html>
