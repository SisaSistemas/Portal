﻿/*!
 * sweetalert2 v6.11.4
 * Released under the MIT License.
 */
(function (global, factory) {
    typeof exports === 'object' && typeof module !== 'undefined' ? module.exports = factory() :
	typeof define === 'function' && define.amd ? define(factory) :
	(global.Sweetalert2 = factory());
}(this, (function () {
    'use strict';

    var styles = "body.swal2-shown {\n  overflow-y: hidden; }\n\nbody.swal2-iosfix {\n  position: fixed;\n  left: 0;\n  right: 0; }\n\n.swal2-container {\n  display: -webkit-box;\n  display: -ms-flexbox;\n  display: flex;\n  -webkit-box-orient: horizontal;\n  -webkit-box-direction: normal;\n      -ms-flex-direction: row;\n          flex-direction: row;\n  -webkit-box-align: center;\n      -ms-flex-align: center;\n          align-items: center;\n  -webkit-box-pack: center;\n      -ms-flex-pack: center;\n          justify-content: center;\n  position: fixed;\n  top: 0;\n  left: 0;\n  bottom: 0;\n  right: 0;\n  padding: 10px;\n  background-color: transparent;\n  z-index: 1060; }\n  .swal2-container.swal2-top {\n    -webkit-box-align: start;\n        -ms-flex-align: start;\n            align-items: flex-start; }\n  .swal2-container.swal2-top-left {\n    -webkit-box-align: start;\n        -ms-flex-align: start;\n            align-items: flex-start;\n    -webkit-box-pack: start;\n        -ms-flex-pack: start;\n            justify-content: flex-start; }\n  .swal2-container.swal2-top-right {\n    -webkit-box-align: start;\n        -ms-flex-align: start;\n            align-items: flex-start;\n    -webkit-box-pack: end;\n        -ms-flex-pack: end;\n            justify-content: flex-end; }\n  .swal2-container.swal2-center {\n    -webkit-box-align: center;\n        -ms-flex-align: center;\n            align-items: center; }\n  .swal2-container.swal2-center-left {\n    -webkit-box-align: center;\n        -ms-flex-align: center;\n            align-items: center;\n    -webkit-box-pack: start;\n        -ms-flex-pack: start;\n            justify-content: flex-start; }\n  .swal2-container.swal2-center-right {\n    -webkit-box-align: center;\n        -ms-flex-align: center;\n            align-items: center;\n    -webkit-box-pack: end;\n        -ms-flex-pack: end;\n            justify-content: flex-end; }\n  .swal2-container.swal2-bottom {\n    -webkit-box-align: end;\n        -ms-flex-align: end;\n            align-items: flex-end; }\n  .swal2-container.swal2-bottom-left {\n    -webkit-box-align: end;\n        -ms-flex-align: end;\n            align-items: flex-end;\n    -webkit-box-pack: start;\n        -ms-flex-pack: start;\n            justify-content: flex-start; }\n  .swal2-container.swal2-bottom-right {\n    -webkit-box-align: end;\n        -ms-flex-align: end;\n            align-items: flex-end;\n    -webkit-box-pack: end;\n        -ms-flex-pack: end;\n            justify-content: flex-end; }\n  .swal2-container.swal2-grow-fullscreen > .swal2-modal {\n    display: -webkit-box !important;\n    display: -ms-flexbox !important;\n    display: flex !important;\n    -webkit-box-flex: 1;\n        -ms-flex: 1;\n            flex: 1;\n    -ms-flex-item-align: stretch;\n        align-self: stretch;\n    -webkit-box-pack: center;\n        -ms-flex-pack: center;\n            justify-content: center; }\n  .swal2-container.swal2-grow-row > .swal2-modal {\n    display: -webkit-box !important;\n    display: -ms-flexbox !important;\n    display: flex !important;\n    -webkit-box-flex: 1;\n        -ms-flex: 1;\n            flex: 1;\n    -ms-flex-line-pack: center;\n        align-content: center;\n    -webkit-box-pack: center;\n        -ms-flex-pack: center;\n            justify-content: center; }\n  .swal2-container.swal2-grow-column {\n    -webkit-box-flex: 1;\n        -ms-flex: 1;\n            flex: 1;\n    -webkit-box-orient: vertical;\n    -webkit-box-direction: normal;\n        -ms-flex-direction: column;\n            flex-direction: column; }\n    .swal2-container.swal2-grow-column.swal2-top, .swal2-container.swal2-grow-column.swal2-center, .swal2-container.swal2-grow-column.swal2-bottom {\n      -webkit-box-align: center;\n          -ms-flex-align: center;\n              align-items: center; }\n    .swal2-container.swal2-grow-column.swal2-top-left, .swal2-container.swal2-grow-column.swal2-center-left, .swal2-container.swal2-grow-column.swal2-bottom-left {\n      -webkit-box-align: start;\n          -ms-flex-align: start;\n              align-items: flex-start; }\n    .swal2-container.swal2-grow-column.swal2-top-right, .swal2-container.swal2-grow-column.swal2-center-right, .swal2-container.swal2-grow-column.swal2-bottom-right {\n      -webkit-box-align: end;\n          -ms-flex-align: end;\n              align-items: flex-end; }\n    .swal2-container.swal2-grow-column > .swal2-modal {\n      display: -webkit-box !important;\n      display: -ms-flexbox !important;\n      display: flex !important;\n      -webkit-box-flex: 1;\n          -ms-flex: 1;\n              flex: 1;\n      -ms-flex-line-pack: center;\n          align-content: center;\n      -webkit-box-pack: center;\n          -ms-flex-pack: center;\n              justify-content: center; }\n  .swal2-container:not(.swal2-top):not(.swal2-top-left):not(.swal2-top-right):not(.swal2-center-left):not(.swal2-center-right):not(.swal2-bottom):not(.swal2-bottom-left):not(.swal2-bottom-right) > .swal2-modal {\n    margin: auto; }\n  @media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {\n    .swal2-container .swal2-modal {\n      margin: 0 !important; } }\n  .swal2-container.swal2-fade {\n    -webkit-transition: background-color .1s;\n    transition: background-color .1s; }\n  .swal2-container.swal2-shown {\n    background-color: rgba(0, 0, 0, 0.4); }\n\n.swal2-modal {\n  -webkit-box-orient: vertical;\n  -webkit-box-direction: normal;\n      -ms-flex-direction: column;\n          flex-direction: column;\n  background-color: #fff;\n  font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;\n  border-radius: 5px;\n  -webkit-box-sizing: border-box;\n          box-sizing: border-box;\n  text-align: center;\n  overflow-x: hidden;\n  overflow-y: auto;\n  display: none;\n  position: relative;\n  max-width: 100%; }\n  .swal2-modal:focus {\n    outline: none; }\n  .swal2-modal.swal2-loading {\n    overflow-y: hidden; }\n  .swal2-modal .swal2-title {\n    color: #595959;\n    font-size: 30px;\n    text-align: center;\n    font-weight: 600;\n    text-transform: none;\n    position: relative;\n    margin: 0 0 .4em;\n    padding: 0;\n    display: block;\n    word-wrap: break-word; }\n  .swal2-modal .swal2-buttonswrapper {\n    margin-top: 15px; }\n    .swal2-modal .swal2-buttonswrapper:not(.swal2-loading) .swal2-styled[disabled] {\n      opacity: .4;\n      cursor: no-drop; }\n    .swal2-modal .swal2-buttonswrapper.swal2-loading .swal2-styled.swal2-confirm {\n      -webkit-box-sizing: border-box;\n              box-sizing: border-box;\n      border: 4px solid transparent;\n      border-color: transparent;\n      width: 40px;\n      height: 40px;\n      padding: 0;\n      margin: 7.5px;\n      vertical-align: top;\n      background-color: transparent !important;\n      color: transparent;\n      cursor: default;\n      border-radius: 100%;\n      -webkit-animation: rotate-loading 1.5s linear 0s infinite normal;\n              animation: rotate-loading 1.5s linear 0s infinite normal;\n      -webkit-user-select: none;\n         -moz-user-select: none;\n          -ms-user-select: none;\n              user-select: none; }\n    .swal2-modal .swal2-buttonswrapper.swal2-loading .swal2-styled.swal2-cancel {\n      margin-left: 30px;\n      margin-right: 30px; }\n    .swal2-modal .swal2-buttonswrapper.swal2-loading :not(.swal2-styled).swal2-confirm::after {\n      display: inline-block;\n      content: '';\n      margin-left: 5px;\n      vertical-align: -1px;\n      height: 15px;\n      width: 15px;\n      border: 3px solid #999999;\n      -webkit-box-shadow: 1px 1px 1px #fff;\n              box-shadow: 1px 1px 1px #fff;\n      border-right-color: transparent;\n      border-radius: 50%;\n      -webkit-animation: rotate-loading 1.5s linear 0s infinite normal;\n              animation: rotate-loading 1.5s linear 0s infinite normal; }\n  .swal2-modal .swal2-styled {\n    border: 0;\n    border-radius: 3px;\n    -webkit-box-shadow: none;\n            box-shadow: none;\n    color: #fff;\n    cursor: pointer;\n    font-size: 17px;\n    font-weight: 500;\n    margin: 15px 5px 0;\n    padding: 10px 32px; }\n    .swal2-modal .swal2-styled:focus {\n      outline: none;\n      -webkit-box-shadow: 0 0 0 2px #fff, 0 0 0 4px rgba(50, 100, 150, 0.4);\n              box-shadow: 0 0 0 2px #fff, 0 0 0 4px rgba(50, 100, 150, 0.4); }\n  .swal2-modal .swal2-image {\n    margin: 20px auto;\n    max-width: 100%; }\n  .swal2-modal .swal2-close {\n    background: transparent;\n    border: 0;\n    margin: 0;\n    padding: 0;\n    width: 38px;\n    height: 40px;\n    font-size: 36px;\n    line-height: 40px;\n    font-family: serif;\n    position: absolute;\n    top: 5px;\n    right: 8px;\n    cursor: pointer;\n    color: #cccccc;\n    -webkit-transition: color .1s ease;\n    transition: color .1s ease; }\n    .swal2-modal .swal2-close:hover {\n      color: #d55; }\n  .swal2-modal > .swal2-input,\n  .swal2-modal > .swal2-file,\n  .swal2-modal > .swal2-textarea,\n  .swal2-modal > .swal2-select,\n  .swal2-modal > .swal2-radio,\n  .swal2-modal > .swal2-checkbox {\n    display: none; }\n  .swal2-modal .swal2-content {\n    font-size: 18px;\n    text-align: center;\n    font-weight: 300;\n    position: relative;\n    float: none;\n    margin: 0;\n    padding: 0;\n    line-height: normal;\n    color: #545454;\n    word-wrap: break-word; }\n  .swal2-modal .swal2-input,\n  .swal2-modal .swal2-file,\n  .swal2-modal .swal2-textarea,\n  .swal2-modal .swal2-select,\n  .swal2-modal .swal2-radio,\n  .swal2-modal .swal2-checkbox {\n    margin: 20px auto; }\n  .swal2-modal .swal2-input,\n  .swal2-modal .swal2-file,\n  .swal2-modal .swal2-textarea {\n    width: 100%;\n    -webkit-box-sizing: border-box;\n            box-sizing: border-box;\n    font-size: 18px;\n    border-radius: 3px;\n    border: 1px solid #d9d9d9;\n    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.06);\n            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.06);\n    -webkit-transition: border-color .3s, -webkit-box-shadow .3s;\n    transition: border-color .3s, -webkit-box-shadow .3s;\n    transition: border-color .3s, box-shadow .3s;\n    transition: border-color .3s, box-shadow .3s, -webkit-box-shadow .3s; }\n    .swal2-modal .swal2-input.swal2-inputerror,\n    .swal2-modal .swal2-file.swal2-inputerror,\n    .swal2-modal .swal2-textarea.swal2-inputerror {\n      border-color: #f27474 !important;\n      -webkit-box-shadow: 0 0 2px #f27474 !important;\n              box-shadow: 0 0 2px #f27474 !important; }\n    .swal2-modal .swal2-input:focus,\n    .swal2-modal .swal2-file:focus,\n    .swal2-modal .swal2-textarea:focus {\n      outline: none;\n      border: 1px solid #b4dbed;\n      -webkit-box-shadow: 0 0 3px #c4e6f5;\n              box-shadow: 0 0 3px #c4e6f5; }\n    .swal2-modal .swal2-input::-webkit-input-placeholder,\n    .swal2-modal .swal2-file::-webkit-input-placeholder,\n    .swal2-modal .swal2-textarea::-webkit-input-placeholder {\n      color: #cccccc; }\n    .swal2-modal .swal2-input:-ms-input-placeholder,\n    .swal2-modal .swal2-file:-ms-input-placeholder,\n    .swal2-modal .swal2-textarea:-ms-input-placeholder {\n      color: #cccccc; }\n    .swal2-modal .swal2-input::-ms-input-placeholder,\n    .swal2-modal .swal2-file::-ms-input-placeholder,\n    .swal2-modal .swal2-textarea::-ms-input-placeholder {\n      color: #cccccc; }\n    .swal2-modal .swal2-input::placeholder,\n    .swal2-modal .swal2-file::placeholder,\n    .swal2-modal .swal2-textarea::placeholder {\n      color: #cccccc; }\n  .swal2-modal .swal2-range input {\n    float: left;\n    width: 80%; }\n  .swal2-modal .swal2-range output {\n    float: right;\n    width: 20%;\n    font-size: 20px;\n    font-weight: 600;\n    text-align: center; }\n  .swal2-modal .swal2-range input,\n  .swal2-modal .swal2-range output {\n    height: 43px;\n    line-height: 43px;\n    vertical-align: middle;\n    margin: 20px auto;\n    padding: 0; }\n  .swal2-modal .swal2-input {\n    height: 43px;\n    padding: 0 12px; }\n    .swal2-modal .swal2-input[type='number'] {\n      max-width: 150px; }\n  .swal2-modal .swal2-file {\n    font-size: 20px; }\n  .swal2-modal .swal2-textarea {\n    height: 108px;\n    padding: 12px; }\n  .swal2-modal .swal2-select {\n    color: #545454;\n    font-size: inherit;\n    padding: 5px 10px;\n    min-width: 40%;\n    max-width: 100%; }\n  .swal2-modal .swal2-radio {\n    border: 0; }\n    .swal2-modal .swal2-radio label:not(:first-child) {\n      margin-left: 20px; }\n    .swal2-modal .swal2-radio input,\n    .swal2-modal .swal2-radio span {\n      vertical-align: middle; }\n    .swal2-modal .swal2-radio input {\n      margin: 0 3px 0 0; }\n  .swal2-modal .swal2-checkbox {\n    color: #545454; }\n    .swal2-modal .swal2-checkbox input,\n    .swal2-modal .swal2-checkbox span {\n      vertical-align: middle; }\n  .swal2-modal .swal2-validationerror {\n    background-color: #f0f0f0;\n    margin: 0 -20px;\n    overflow: hidden;\n    padding: 10px;\n    color: gray;\n    font-size: 16px;\n    font-weight: 300;\n    display: none; }\n    .swal2-modal .swal2-validationerror::before {\n      content: '!';\n      display: inline-block;\n      width: 24px;\n      height: 24px;\n      border-radius: 50%;\n      background-color: #ea7d7d;\n      color: #fff;\n      line-height: 24px;\n      text-align: center;\n      margin-right: 10px; }\n\n@supports (-ms-accelerator: true) {\n  .swal2-range input {\n    width: 100% !important; }\n  .swal2-range output {\n    display: none; } }\n\n@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {\n  .swal2-range input {\n    width: 100% !important; }\n  .swal2-range output {\n    display: none; } }\n\n.swal2-icon {\n  width: 80px;\n  height: 80px;\n  border: 4px solid transparent;\n  border-radius: 50%;\n  margin: 20px auto 30px;\n  padding: 0;\n  position: relative;\n  -webkit-box-sizing: content-box;\n          box-sizing: content-box;\n  cursor: default;\n  -webkit-user-select: none;\n     -moz-user-select: none;\n      -ms-user-select: none;\n          user-select: none; }\n  .swal2-icon.swal2-error {\n    border-color: #f27474; }\n    .swal2-icon.swal2-error .swal2-x-mark {\n      position: relative;\n      display: block; }\n    .swal2-icon.swal2-error [class^='swal2-x-mark-line'] {\n      position: absolute;\n      height: 5px;\n      width: 47px;\n      background-color: #f27474;\n      display: block;\n      top: 37px;\n      border-radius: 2px; }\n      .swal2-icon.swal2-error [class^='swal2-x-mark-line'][class$='left'] {\n        -webkit-transform: rotate(45deg);\n                transform: rotate(45deg);\n        left: 17px; }\n      .swal2-icon.swal2-error [class^='swal2-x-mark-line'][class$='right'] {\n        -webkit-transform: rotate(-45deg);\n                transform: rotate(-45deg);\n        right: 16px; }\n  .swal2-icon.swal2-warning {\n    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;\n    color: #f8bb86;\n    border-color: #facea8;\n    font-size: 60px;\n    line-height: 80px;\n    text-align: center; }\n  .swal2-icon.swal2-info {\n    font-family: 'Open Sans', sans-serif;\n    color: #3fc3ee;\n    border-color: #9de0f6;\n    font-size: 60px;\n    line-height: 80px;\n    text-align: center; }\n  .swal2-icon.swal2-question {\n    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;\n    color: #87adbd;\n    border-color: #c9dae1;\n    font-size: 60px;\n    line-height: 80px;\n    text-align: center; }\n  .swal2-icon.swal2-success {\n    border-color: #a5dc86; }\n    .swal2-icon.swal2-success [class^='swal2-success-circular-line'] {\n      border-radius: 50%;\n      position: absolute;\n      width: 60px;\n      height: 120px;\n      -webkit-transform: rotate(45deg);\n              transform: rotate(45deg); }\n      .swal2-icon.swal2-success [class^='swal2-success-circular-line'][class$='left'] {\n        border-radius: 120px 0 0 120px;\n        top: -7px;\n        left: -33px;\n        -webkit-transform: rotate(-45deg);\n                transform: rotate(-45deg);\n        -webkit-transform-origin: 60px 60px;\n                transform-origin: 60px 60px; }\n      .swal2-icon.swal2-success [class^='swal2-success-circular-line'][class$='right'] {\n        border-radius: 0 120px 120px 0;\n        top: -11px;\n        left: 30px;\n        -webkit-transform: rotate(-45deg);\n                transform: rotate(-45deg);\n        -webkit-transform-origin: 0 60px;\n                transform-origin: 0 60px; }\n    .swal2-icon.swal2-success .swal2-success-ring {\n      width: 80px;\n      height: 80px;\n      border: 4px solid rgba(165, 220, 134, 0.2);\n      border-radius: 50%;\n      -webkit-box-sizing: content-box;\n              box-sizing: content-box;\n      position: absolute;\n      left: -4px;\n      top: -4px;\n      z-index: 2; }\n    .swal2-icon.swal2-success .swal2-success-fix {\n      width: 7px;\n      height: 90px;\n      position: absolute;\n      left: 28px;\n      top: 8px;\n      z-index: 1;\n      -webkit-transform: rotate(-45deg);\n              transform: rotate(-45deg); }\n    .swal2-icon.swal2-success [class^='swal2-success-line'] {\n      height: 5px;\n      background-color: #a5dc86;\n      display: block;\n      border-radius: 2px;\n      position: absolute;\n      z-index: 2; }\n      .swal2-icon.swal2-success [class^='swal2-success-line'][class$='tip'] {\n        width: 25px;\n        left: 14px;\n        top: 46px;\n        -webkit-transform: rotate(45deg);\n                transform: rotate(45deg); }\n      .swal2-icon.swal2-success [class^='swal2-success-line'][class$='long'] {\n        width: 47px;\n        right: 8px;\n        top: 38px;\n        -webkit-transform: rotate(-45deg);\n                transform: rotate(-45deg); }\n\n.swal2-progresssteps {\n  font-weight: 600;\n  margin: 0 0 20px;\n  padding: 0; }\n  .swal2-progresssteps li {\n    display: inline-block;\n    position: relative; }\n  .swal2-progresssteps .swal2-progresscircle {\n    background: #3085d6;\n    border-radius: 2em;\n    color: #fff;\n    height: 2em;\n    line-height: 2em;\n    text-align: center;\n    width: 2em;\n    z-index: 20; }\n    .swal2-progresssteps .swal2-progresscircle:first-child {\n      margin-left: 0; }\n    .swal2-progresssteps .swal2-progresscircle:last-child {\n      margin-right: 0; }\n    .swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep {\n      background: #3085d6; }\n      .swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep ~ .swal2-progresscircle {\n        background: #add8e6; }\n      .swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep ~ .swal2-progressline {\n        background: #add8e6; }\n  .swal2-progresssteps .swal2-progressline {\n    background: #3085d6;\n    height: .4em;\n    margin: 0 -1px;\n    z-index: 10; }\n\n[class^='swal2'] {\n  -webkit-tap-highlight-color: transparent; }\n\n@-webkit-keyframes showSweetAlert {\n  0% {\n    -webkit-transform: scale(0.7);\n            transform: scale(0.7); }\n  45% {\n    -webkit-transform: scale(1.05);\n            transform: scale(1.05); }\n  80% {\n    -webkit-transform: scale(0.95);\n            transform: scale(0.95); }\n  100% {\n    -webkit-transform: scale(1);\n            transform: scale(1); } }\n\n@keyframes showSweetAlert {\n  0% {\n    -webkit-transform: scale(0.7);\n            transform: scale(0.7); }\n  45% {\n    -webkit-transform: scale(1.05);\n            transform: scale(1.05); }\n  80% {\n    -webkit-transform: scale(0.95);\n            transform: scale(0.95); }\n  100% {\n    -webkit-transform: scale(1);\n            transform: scale(1); } }\n\n@-webkit-keyframes hideSweetAlert {\n  0% {\n    -webkit-transform: scale(1);\n            transform: scale(1);\n    opacity: 1; }\n  100% {\n    -webkit-transform: scale(0.5);\n            transform: scale(0.5);\n    opacity: 0; } }\n\n@keyframes hideSweetAlert {\n  0% {\n    -webkit-transform: scale(1);\n            transform: scale(1);\n    opacity: 1; }\n  100% {\n    -webkit-transform: scale(0.5);\n            transform: scale(0.5);\n    opacity: 0; } }\n\n.swal2-show {\n  -webkit-animation: showSweetAlert .3s;\n          animation: showSweetAlert .3s; }\n  .swal2-show.swal2-noanimation {\n    -webkit-animation: none;\n            animation: none; }\n\n.swal2-hide {\n  -webkit-animation: hideSweetAlert .15s forwards;\n          animation: hideSweetAlert .15s forwards; }\n  .swal2-hide.swal2-noanimation {\n    -webkit-animation: none;\n            animation: none; }\n\n@-webkit-keyframes animate-success-tip {\n  0% {\n    width: 0;\n    left: 1px;\n    top: 19px; }\n  54% {\n    width: 0;\n    left: 1px;\n    top: 19px; }\n  70% {\n    width: 50px;\n    left: -8px;\n    top: 37px; }\n  84% {\n    width: 17px;\n    left: 21px;\n    top: 48px; }\n  100% {\n    width: 25px;\n    left: 14px;\n    top: 45px; } }\n\n@keyframes animate-success-tip {\n  0% {\n    width: 0;\n    left: 1px;\n    top: 19px; }\n  54% {\n    width: 0;\n    left: 1px;\n    top: 19px; }\n  70% {\n    width: 50px;\n    left: -8px;\n    top: 37px; }\n  84% {\n    width: 17px;\n    left: 21px;\n    top: 48px; }\n  100% {\n    width: 25px;\n    left: 14px;\n    top: 45px; } }\n\n@-webkit-keyframes animate-success-long {\n  0% {\n    width: 0;\n    right: 46px;\n    top: 54px; }\n  65% {\n    width: 0;\n    right: 46px;\n    top: 54px; }\n  84% {\n    width: 55px;\n    right: 0;\n    top: 35px; }\n  100% {\n    width: 47px;\n    right: 8px;\n    top: 38px; } }\n\n@keyframes animate-success-long {\n  0% {\n    width: 0;\n    right: 46px;\n    top: 54px; }\n  65% {\n    width: 0;\n    right: 46px;\n    top: 54px; }\n  84% {\n    width: 55px;\n    right: 0;\n    top: 35px; }\n  100% {\n    width: 47px;\n    right: 8px;\n    top: 38px; } }\n\n@-webkit-keyframes rotatePlaceholder {\n  0% {\n    -webkit-transform: rotate(-45deg);\n            transform: rotate(-45deg); }\n  5% {\n    -webkit-transform: rotate(-45deg);\n            transform: rotate(-45deg); }\n  12% {\n    -webkit-transform: rotate(-405deg);\n            transform: rotate(-405deg); }\n  100% {\n    -webkit-transform: rotate(-405deg);\n            transform: rotate(-405deg); } }\n\n@keyframes rotatePlaceholder {\n  0% {\n    -webkit-transform: rotate(-45deg);\n            transform: rotate(-45deg); }\n  5% {\n    -webkit-transform: rotate(-45deg);\n            transform: rotate(-45deg); }\n  12% {\n    -webkit-transform: rotate(-405deg);\n            transform: rotate(-405deg); }\n  100% {\n    -webkit-transform: rotate(-405deg);\n            transform: rotate(-405deg); } }\n\n.swal2-animate-success-line-tip {\n  -webkit-animation: animate-success-tip .75s;\n          animation: animate-success-tip .75s; }\n\n.swal2-animate-success-line-long {\n  -webkit-animation: animate-success-long .75s;\n          animation: animate-success-long .75s; }\n\n.swal2-success.swal2-animate-success-icon .swal2-success-circular-line-right {\n  -webkit-animation: rotatePlaceholder 4.25s ease-in;\n          animation: rotatePlaceholder 4.25s ease-in; }\n\n@-webkit-keyframes animate-error-icon {\n  0% {\n    -webkit-transform: rotateX(100deg);\n            transform: rotateX(100deg);\n    opacity: 0; }\n  100% {\n    -webkit-transform: rotateX(0deg);\n            transform: rotateX(0deg);\n    opacity: 1; } }\n\n@keyframes animate-error-icon {\n  0% {\n    -webkit-transform: rotateX(100deg);\n            transform: rotateX(100deg);\n    opacity: 0; }\n  100% {\n    -webkit-transform: rotateX(0deg);\n            transform: rotateX(0deg);\n    opacity: 1; } }\n\n.swal2-animate-error-icon {\n  -webkit-animation: animate-error-icon .5s;\n          animation: animate-error-icon .5s; }\n\n@-webkit-keyframes animate-x-mark {\n  0% {\n    -webkit-transform: scale(0.4);\n            transform: scale(0.4);\n    margin-top: 26px;\n    opacity: 0; }\n  50% {\n    -webkit-transform: scale(0.4);\n            transform: scale(0.4);\n    margin-top: 26px;\n    opacity: 0; }\n  80% {\n    -webkit-transform: scale(1.15);\n            transform: scale(1.15);\n    margin-top: -6px; }\n  100% {\n    -webkit-transform: scale(1);\n            transform: scale(1);\n    margin-top: 0;\n    opacity: 1; } }\n\n@keyframes animate-x-mark {\n  0% {\n    -webkit-transform: scale(0.4);\n            transform: scale(0.4);\n    margin-top: 26px;\n    opacity: 0; }\n  50% {\n    -webkit-transform: scale(0.4);\n            transform: scale(0.4);\n    margin-top: 26px;\n    opacity: 0; }\n  80% {\n    -webkit-transform: scale(1.15);\n            transform: scale(1.15);\n    margin-top: -6px; }\n  100% {\n    -webkit-transform: scale(1);\n            transform: scale(1);\n    margin-top: 0;\n    opacity: 1; } }\n\n.swal2-animate-x-mark {\n  -webkit-animation: animate-x-mark .5s;\n          animation: animate-x-mark .5s; }\n\n@-webkit-keyframes rotate-loading {\n  0% {\n    -webkit-transform: rotate(0deg);\n            transform: rotate(0deg); }\n  100% {\n    -webkit-transform: rotate(360deg);\n            transform: rotate(360deg); } }\n\n@keyframes rotate-loading {\n  0% {\n    -webkit-transform: rotate(0deg);\n            transform: rotate(0deg); }\n  100% {\n    -webkit-transform: rotate(360deg);\n            transform: rotate(360deg); } }\n";

    var defaultParams = {
        title: '',
        titleText: '',
        text: '',
        html: '',
        type: null,
        customClass: '',
        target: 'body',
        animation: true,
        allowOutsideClick: true,
        allowEscapeKey: true,
        allowEnterKey: true,
        showConfirmButton: true,
        showCancelButton: false,
        preConfirm: null,
        confirmButtonText: 'OK',
        confirmButtonAriaLabel: '',
        confirmButtonColor: '#3085d6',
        confirmButtonClass: null,
        cancelButtonText: 'Cancel',
        cancelButtonAriaLabel: '',
        cancelButtonColor: '#aaa',
        cancelButtonClass: null,
        buttonsStyling: true,
        reverseButtons: false,
        focusConfirm: true,
        focusCancel: false,
        showCloseButton: false,
        closeButtonAriaLabel: 'Close this dialog',
        showLoaderOnConfirm: false,
        imageUrl: null,
        imageWidth: null,
        imageHeight: null,
        imageAlt: '',
        imageClass: null,
        timer: null,
        width: 500,
        padding: 20,
        background: '#fff',
        input: null,
        inputPlaceholder: '',
        inputValue: '',
        inputOptions: {},
        inputAutoTrim: true,
        inputClass: null,
        inputAttributes: {},
        inputValidator: null,
        grow: false,
        position: 'center',
        progressSteps: [],
        currentProgressStep: null,
        progressStepsDistance: '40px',
        onBeforeOpen: null,
        onOpen: null,
        onClose: null,
        useRejections: true
    };

    var swalPrefix = 'swal2-';

    var prefix = function prefix(items) {
        var result = {};
        for (var i in items) {
            result[items[i]] = swalPrefix + items[i];
        }
        return result;
    };

    var swalClasses = prefix(['container', 'shown', 'iosfix', 'modal', 'overlay', 'fade', 'show', 'hide', 'noanimation', 'close', 'title', 'content', 'buttonswrapper', 'confirm', 'cancel', 'icon', 'image', 'input', 'file', 'range', 'select', 'radio', 'checkbox', 'textarea', 'inputerror', 'validationerror', 'progresssteps', 'activeprogressstep', 'progresscircle', 'progressline', 'loading', 'styled', 'top', 'top-left', 'top-right', 'center', 'center-left', 'center-right', 'bottom', 'bottom-left', 'bottom-right', 'grow-row', 'grow-column', 'grow-fullscreen']);

    var iconTypes = prefix(['success', 'warning', 'info', 'question', 'error']);

    var consolePrefix = 'SweetAlert2:';

    /*
     * Set hover, active and focus-states for buttons (source: http://www.sitepoint.com/javascript-generate-lighter-darker-color)
     */
    var colorLuminance = function colorLuminance(hex, lum) {
        // Validate hex string
        hex = String(hex).replace(/[^0-9a-f]/gi, '');
        if (hex.length < 6) {
            hex = hex[0] + hex[0] + hex[1] + hex[1] + hex[2] + hex[2];
        }
        lum = lum || 0;

        // Convert to decimal and change luminosity
        var rgb = '#';
        for (var i = 0; i < 3; i++) {
            var c = parseInt(hex.substr(i * 2, 2), 16);
            c = Math.round(Math.min(Math.max(0, c + c * lum), 255)).toString(16);
            rgb += ('00' + c).substr(c.length);
        }

        return rgb;
    };

    var uniqueArray = function uniqueArray(arr) {
        var result = [];
        for (var i in arr) {
            if (result.indexOf(arr[i]) === -1) {
                result.push(arr[i]);
            }
        }
        return result;
    };

    /**
     * Standardise console warnings
     * @param message
     */
    var warn = function warn(message) {
        console.warn(consolePrefix + ' ' + message);
    };

    /**
     * Standardise console errors
     * @param message
     */
    var error = function error(message) {
        console.error(consolePrefix + ' ' + message);
    };

    var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) {
        return typeof obj;
    } : function (obj) {
        return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj;
    };





    var asyncGenerator = function () {
        function AwaitValue(value) {
            this.value = value;
        }

        function AsyncGenerator(gen) {
            var front, back;

            function send(key, arg) {
                return new Promise(function (resolve, reject) {
                    var request = {
                        key: key,
                        arg: arg,
                        resolve: resolve,
                        reject: reject,
                        next: null
                    };

                    if (back) {
                        back = back.next = request;
                    } else {
                        front = back = request;
                        resume(key, arg);
                    }
                });
            }

            function resume(key, arg) {
                try {
                    var result = gen[key](arg);
                    var value = result.value;

                    if (value instanceof AwaitValue) {
                        Promise.resolve(value.value).then(function (arg) {
                            resume("next", arg);
                        }, function (arg) {
                            resume("throw", arg);
                        });
                    } else {
                        settle(result.done ? "return" : "normal", result.value);
                    }
                } catch (err) {
                    settle("throw", err);
                }
            }

            function settle(type, value) {
                switch (type) {
                    case "return":
                        front.resolve({
                            value: value,
                            done: true
                        });
                        break;

                    case "throw":
                        front.reject(value);
                        break;

                    default:
                        front.resolve({
                            value: value,
                            done: false
                        });
                        break;
                }

                front = front.next;

                if (front) {
                    resume(front.key, front.arg);
                } else {
                    back = null;
                }
            }

            this._invoke = send;

            if (typeof gen.return !== "function") {
                this.return = undefined;
            }
        }

        if (typeof Symbol === "function" && Symbol.asyncIterator) {
            AsyncGenerator.prototype[Symbol.asyncIterator] = function () {
                return this;
            };
        }

        AsyncGenerator.prototype.next = function (arg) {
            return this._invoke("next", arg);
        };

        AsyncGenerator.prototype.throw = function (arg) {
            return this._invoke("throw", arg);
        };

        AsyncGenerator.prototype.return = function (arg) {
            return this._invoke("return", arg);
        };

        return {
            wrap: function (fn) {
                return function () {
                    return new AsyncGenerator(fn.apply(this, arguments));
                };
            },
            await: function (value) {
                return new AwaitValue(value);
            }
        };
    }();















    var _extends = Object.assign || function (target) {
        for (var i = 1; i < arguments.length; i++) {
            var source = arguments[i];

            for (var key in source) {
                if (Object.prototype.hasOwnProperty.call(source, key)) {
                    target[key] = source[key];
                }
            }
        }

        return target;
    };

    var modalParams = _extends({}, defaultParams);
    var queue = [];

    /*
     * Check for the existence of Promise
     * Hopefully to avoid many github issues
     */
    if (typeof Promise === 'undefined') {
        error('This package requires a Promise library, please include a shim to enable it in this browser (See: https://github.com/limonte/sweetalert2/wiki/Migration-from-SweetAlert-to-SweetAlert2#1-ie-support)');
    }

    /**
     * Set type, text and actions on modal
     *
     * @param params
     * @returns {boolean}
     */
    var setParameters = function setParameters(params) {
        // If a custom element is set, determine if it is valid
        if (typeof params.target === 'string' && !document.querySelector(params.target) || typeof params.target !== 'string' && !params.target.appendChild) {
            warn('Target parameter is not valid, defaulting to "body"');
            params.target = 'body';
        }

        var modal = void 0;
        var oldModal = getModal();
        var targetElement = typeof params.target === 'string' ? document.querySelector(params.target) : params.target;
        // If the model target has changed, refresh the modal
        if (oldModal && targetElement && oldModal.parentNode !== targetElement.parentNode) {
            modal = init(params);
        } else {
            modal = oldModal || init(params);
        }

        for (var param in params) {
            if (!sweetAlert$1.isValidParameter(param)) {
                warn('Unknown parameter "' + param + '"');
            }
        }

        // Set modal width
        modal.style.width = typeof params.width === 'number' ? params.width + 'px' : params.width;

        modal.style.padding = params.padding + 'px';
        modal.style.background = params.background;
        var successIconParts = modal.querySelectorAll('[class^=swal2-success-circular-line], .swal2-success-fix');
        for (var i = 0; i < successIconParts.length; i++) {
            successIconParts[i].style.background = params.background;
        }

        var container = getContainer();
        var title = getTitle();
        var content = getContent();
        var buttonsWrapper = getButtonsWrapper();
        var confirmButton = getConfirmButton();
        var cancelButton = getCancelButton();
        var closeButton = getCloseButton();

        // Title
        if (params.titleText) {
            title.innerText = params.titleText;
        } else {
            title.innerHTML = params.title.split('\n').join('<br />');
        }

        // Content
        if (params.text || params.html) {
            if (_typeof(params.html) === 'object') {
                content.innerHTML = '';
                if (0 in params.html) {
                    for (var _i = 0; _i in params.html; _i++) {
                        content.appendChild(params.html[_i].cloneNode(true));
                    }
                } else {
                    content.appendChild(params.html.cloneNode(true));
                }
            } else if (params.html) {
                content.innerHTML = params.html;
            } else if (params.text) {
                content.textContent = params.text;
            }
            show(content);
        } else {
            hide(content);
        }

        // Position
        if (params.position in swalClasses) {
            addClass(container, swalClasses[params.position]);
        }

        // Grow
        if (params.grow && typeof params.grow === 'string') {
            var growClass = 'grow-' + params.grow;
            if (growClass in swalClasses) {
                addClass(container, swalClasses[growClass]);
            }
        }

        // Close button
        if (params.showCloseButton) {
            closeButton.setAttribute('aria-label', params.closeButtonAriaLabel);
            show(closeButton);
        } else {
            hide(closeButton);
        }

        // Custom Class
        modal.className = swalClasses.modal;
        if (params.customClass) {
            addClass(modal, params.customClass);
        }

        // Progress steps
        var progressStepsContainer = getProgressSteps();
        var currentProgressStep = parseInt(params.currentProgressStep === null ? sweetAlert$1.getQueueStep() : params.currentProgressStep, 10);
        if (params.progressSteps.length) {
            show(progressStepsContainer);
            empty(progressStepsContainer);
            if (currentProgressStep >= params.progressSteps.length) {
                warn('Invalid currentProgressStep parameter, it should be less than progressSteps.length ' + '(currentProgressStep like JS arrays starts from 0)');
            }
            params.progressSteps.forEach(function (step, index) {
                var circle = document.createElement('li');
                addClass(circle, swalClasses.progresscircle);
                circle.innerHTML = step;
                if (index === currentProgressStep) {
                    addClass(circle, swalClasses.activeprogressstep);
                }
                progressStepsContainer.appendChild(circle);
                if (index !== params.progressSteps.length - 1) {
                    var line = document.createElement('li');
                    addClass(line, swalClasses.progressline);
                    line.style.width = params.progressStepsDistance;
                    progressStepsContainer.appendChild(line);
                }
            });
        } else {
            hide(progressStepsContainer);
        }

        // Icon
        var icons = getIcons();
        for (var _i2 = 0; _i2 < icons.length; _i2++) {
            hide(icons[_i2]);
        }
        if (params.type) {
            var validType = false;
            for (var iconType in iconTypes) {
                if (params.type === iconType) {
                    validType = true;
                    break;
                }
            }
            if (!validType) {
                error('Unknown alert type: ' + params.type);
                return false;
            }
            var icon = modal.querySelector('.' + swalClasses.icon + '.' + iconTypes[params.type]);
            show(icon);

            // Animate icon
            if (params.animation) {
                switch (params.type) {
                    case 'success':
                        addClass(icon, 'swal2-animate-success-icon');
                        addClass(icon.querySelector('.swal2-success-line-tip'), 'swal2-animate-success-line-tip');
                        addClass(icon.querySelector('.swal2-success-line-long'), 'swal2-animate-success-line-long');
                        break;
                    case 'error':
                        addClass(icon, 'swal2-animate-error-icon');
                        addClass(icon.querySelector('.swal2-x-mark'), 'swal2-animate-x-mark');
                        break;
                    default:
                        break;
                }
            }
        }

        // Custom image
        var image = getImage();
        if (params.imageUrl) {
            image.setAttribute('src', params.imageUrl);
            image.setAttribute('alt', params.imageAlt);
            show(image);

            if (params.imageWidth) {
                image.setAttribute('width', params.imageWidth);
            } else {
                image.removeAttribute('width');
            }

            if (params.imageHeight) {
                image.setAttribute('height', params.imageHeight);
            } else {
                image.removeAttribute('height');
            }

            image.className = swalClasses.image;
            if (params.imageClass) {
                addClass(image, params.imageClass);
            }
        } else {
            hide(image);
        }

        // Cancel button
        if (params.showCancelButton) {
            cancelButton.style.display = 'inline-block';
        } else {
            hide(cancelButton);
        }

        // Confirm button
        if (params.showConfirmButton) {
            removeStyleProperty(confirmButton, 'display');
        } else {
            hide(confirmButton);
        }

        // Buttons wrapper
        if (!params.showConfirmButton && !params.showCancelButton) {
            hide(buttonsWrapper);
        } else {
            show(buttonsWrapper);
        }

        // Edit text on confirm and cancel buttons
        confirmButton.innerHTML = params.confirmButtonText;
        cancelButton.innerHTML = params.cancelButtonText;

        // ARIA labels for confirm and cancel buttons
        confirmButton.setAttribute('aria-label', params.confirmButtonAriaLabel);
        cancelButton.setAttribute('aria-label', params.cancelButtonAriaLabel);

        // Set buttons to selected background colors
        if (params.buttonsStyling) {
            confirmButton.style.backgroundColor = params.confirmButtonColor;
            cancelButton.style.backgroundColor = params.cancelButtonColor;
        }

        // Add buttons custom classes
        confirmButton.className = swalClasses.confirm;
        addClass(confirmButton, params.confirmButtonClass);
        cancelButton.className = swalClasses.cancel;
        addClass(cancelButton, params.cancelButtonClass);

        // Buttons styling
        if (params.buttonsStyling) {
            addClass(confirmButton, swalClasses.styled);
            addClass(cancelButton, swalClasses.styled);
        } else {
            removeClass(confirmButton, swalClasses.styled);
            removeClass(cancelButton, swalClasses.styled);

            confirmButton.style.backgroundColor = confirmButton.style.borderLeftColor = confirmButton.style.borderRightColor = '';
            cancelButton.style.backgroundColor = cancelButton.style.borderLeftColor = cancelButton.style.borderRightColor = '';
        }

        // CSS animation
        if (params.animation === true) {
            removeClass(modal, swalClasses.noanimation);
        } else {
            addClass(modal, swalClasses.noanimation);
        }

        // showLoaderOnConfirm && preConfirm
        if (params.showLoaderOnConfirm && !params.preConfirm) {
            warn('showLoaderOnConfirm is set to true, but preConfirm is not defined.\n' + 'showLoaderOnConfirm should be used together with preConfirm, see usage example:\n' + 'https://limonte.github.io/sweetalert2/#ajax-request');
        }
    };

    /**
     * Animations
     *
     * @param animation
     * @param onBeforeOpen
     * @param onComplete
     */
    var openModal = function openModal(animation, onBeforeOpen, onComplete) {
        var container = getContainer();
        var modal = getModal();

        if (onBeforeOpen !== null && typeof onBeforeOpen === 'function') {
            onBeforeOpen(modal);
        }

        if (animation) {
            addClass(modal, swalClasses.show);
            addClass(container, swalClasses.fade);
            removeClass(modal, swalClasses.hide);
        } else {
            removeClass(modal, swalClasses.fade);
        }
        show(modal);

        // scrolling is 'hidden' until animation is done, after that 'auto'
        container.style.overflowY = 'hidden';
        if (animationEndEvent && !hasClass(modal, swalClasses.noanimation)) {
            modal.addEventListener(animationEndEvent, function swalCloseEventFinished() {
                modal.removeEventListener(animationEndEvent, swalCloseEventFinished);
                container.style.overflowY = 'auto';
            });
        } else {
            container.style.overflowY = 'auto';
        }

        addClass(document.documentElement, swalClasses.shown);
        addClass(document.body, swalClasses.shown);
        addClass(container, swalClasses.shown);
        fixScrollbar();
        iOSfix();
        states.previousActiveElement = document.activeElement;
        if (onComplete !== null && typeof onComplete === 'function') {
            setTimeout(function () {
                onComplete(modal);
            });
        }
    };

    var fixScrollbar = function fixScrollbar() {
        // for queues, do not do this more than once
        if (states.previousBodyPadding !== null) {
            return;
        }
        // if the body has overflow
        if (document.body.scrollHeight > window.innerHeight) {
            // add padding so the content doesn't shift after removal of scrollbar
            states.previousBodyPadding = document.body.style.paddingRight;
            document.body.style.paddingRight = measureScrollbar() + 'px';
        }
    };

    var undoScrollbar = function undoScrollbar() {
        if (states.previousBodyPadding !== null) {
            document.body.style.paddingRight = states.previousBodyPadding;
            states.previousBodyPadding = null;
        }
    };

    // Fix iOS scrolling http://stackoverflow.com/q/39626302/1331425
    var iOSfix = function iOSfix() {
        var iOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
        if (iOS && !hasClass(document.body, swalClasses.iosfix)) {
            var offset = document.body.scrollTop;
            document.body.style.top = offset * -1 + 'px';
            addClass(document.body, swalClasses.iosfix);
        }
    };

    var undoIOSfix = function undoIOSfix() {
        if (hasClass(document.body, swalClasses.iosfix)) {
            var offset = parseInt(document.body.style.top, 10);
            removeClass(document.body, swalClasses.iosfix);
            document.body.style.top = '';
            document.body.scrollTop = offset * -1;
        }
    };

    // SweetAlert entry point
    var sweetAlert$1 = function sweetAlert() {
        for (var _len = arguments.length, args = Array(_len), _key = 0; _key < _len; _key++) {
            args[_key] = arguments[_key];
        }

        if (args[0] === undefined) {
            error('SweetAlert2 expects at least 1 attribute!');
            return false;
        }

        var params = _extends({}, modalParams);

        switch (_typeof(args[0])) {
            case 'string':
                params.title = args[0];
                params.html = args[1];
                params.type = args[2];

                break;

            case 'object':
                _extends(params, args[0]);
                params.extraParams = args[0].extraParams;

                if (params.input === 'email' && params.inputValidator === null) {
                    params.inputValidator = function (email) {
                        return new Promise(function (resolve, reject) {
                            var emailRegex = /^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
                            if (emailRegex.test(email)) {
                                resolve();
                            } else {
                                reject('Invalid email address');
                            }
                        });
                    };
                }

                if (params.input === 'url' && params.inputValidator === null) {
                    params.inputValidator = function (url) {
                        return new Promise(function (resolve, reject) {
                            // taken from https://stackoverflow.com/a/3809435/1331425
                            var urlRegex = /^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_+.~#?&//=]*)$/;
                            if (urlRegex.test(url)) {
                                resolve();
                            } else {
                                reject('Invalid URL');
                            }
                        });
                    };
                }
                break;

            default:
                error('Unexpected type of argument! Expected "string" or "object", got ' + _typeof(args[0]));
                return false;
        }

        setParameters(params);

        var container = getContainer();
        var modal = getModal();

        return new Promise(function (resolve, reject) {
            // Close on timer
            if (params.timer) {
                modal.timeout = setTimeout(function () {
                    sweetAlert.closeModal(params.onClose);
                    if (params.useRejections) {
                        reject('timer');
                    } else {
                        resolve({ dismiss: 'timer' });
                    }
                }, params.timer);
            }

            // Get input element by specified type or, if type isn't specified, by params.input
            var getInput = function getInput(inputType) {
                inputType = inputType || params.input;
                if (!inputType) {
                    return null;
                }
                switch (inputType) {
                    case 'select':
                    case 'textarea':
                    case 'file':
                        return getChildByClass(modal, swalClasses[inputType]);
                    case 'checkbox':
                        return modal.querySelector('.' + swalClasses.checkbox + ' input');
                    case 'radio':
                        return modal.querySelector('.' + swalClasses.radio + ' input:checked') || modal.querySelector('.' + swalClasses.radio + ' input:first-child');
                    case 'range':
                        return modal.querySelector('.' + swalClasses.range + ' input');
                    default:
                        return getChildByClass(modal, swalClasses.input);
                }
            };

            // Get the value of the modal input
            var getInputValue = function getInputValue() {
                var input = getInput();
                if (!input) {
                    return null;
                }
                switch (params.input) {
                    case 'checkbox':
                        return input.checked ? 1 : 0;
                    case 'radio':
                        return input.checked ? input.value : null;
                    case 'file':
                        return input.files.length ? input.files[0] : null;
                    default:
                        return params.inputAutoTrim ? input.value.trim() : input.value;
                }
            };

            // input autofocus
            if (params.input) {
                setTimeout(function () {
                    var input = getInput();
                    if (input) {
                        focusInput(input);
                    }
                }, 0);
            }

            var confirm = function confirm(value) {
                if (params.showLoaderOnConfirm) {
                    sweetAlert.showLoading();
                }

                if (params.preConfirm) {
                    params.preConfirm(value, params.extraParams).then(function (preConfirmValue) {
                        sweetAlert.closeModal(params.onClose);
                        resolve(preConfirmValue || value);
                    }, function (error$$1) {
                        sweetAlert.hideLoading();
                        if (error$$1) {
                            sweetAlert.showValidationError(error$$1);
                        }
                    });
                } else {
                    sweetAlert.closeModal(params.onClose);
                    if (params.useRejections) {
                        resolve(value);
                    } else {
                        resolve({ value: value });
                    }
                }
            };

            // Mouse interactions
            var onButtonEvent = function onButtonEvent(event) {
                var e = event || window.event;
                var target = e.target || e.srcElement;
                var confirmButton = getConfirmButton();
                var cancelButton = getCancelButton();
                var targetedConfirm = confirmButton && (confirmButton === target || confirmButton.contains(target));
                var targetedCancel = cancelButton && (cancelButton === target || cancelButton.contains(target));

                switch (e.type) {
                    case 'mouseover':
                    case 'mouseup':
                        if (params.buttonsStyling) {
                            if (targetedConfirm) {
                                confirmButton.style.backgroundColor = colorLuminance(params.confirmButtonColor, -0.1);
                            } else if (targetedCancel) {
                                cancelButton.style.backgroundColor = colorLuminance(params.cancelButtonColor, -0.1);
                            }
                        }
                        break;
                    case 'mouseout':
                        if (params.buttonsStyling) {
                            if (targetedConfirm) {
                                confirmButton.style.backgroundColor = params.confirmButtonColor;
                            } else if (targetedCancel) {
                                cancelButton.style.backgroundColor = params.cancelButtonColor;
                            }
                        }
                        break;
                    case 'mousedown':
                        if (params.buttonsStyling) {
                            if (targetedConfirm) {
                                confirmButton.style.backgroundColor = colorLuminance(params.confirmButtonColor, -0.2);
                            } else if (targetedCancel) {
                                cancelButton.style.backgroundColor = colorLuminance(params.cancelButtonColor, -0.2);
                            }
                        }
                        break;
                    case 'click':
                        // Clicked 'confirm'
                        if (targetedConfirm && sweetAlert.isVisible()) {
                            sweetAlert.disableButtons();
                            if (params.input) {
                                var inputValue = getInputValue();

                                if (params.inputValidator) {
                                    sweetAlert.disableInput();
                                    params.inputValidator(inputValue, params.extraParams).then(function () {
                                        sweetAlert.enableButtons();
                                        sweetAlert.enableInput();
                                        confirm(inputValue);
                                    }, function (error$$1) {
                                        sweetAlert.enableButtons();
                                        sweetAlert.enableInput();
                                        if (error$$1) {
                                            sweetAlert.showValidationError(error$$1);
                                        }
                                    });
                                } else {
                                    confirm(inputValue);
                                }
                            } else {
                                confirm(true);
                            }

                            // Clicked 'cancel'
                        } else if (targetedCancel && sweetAlert.isVisible()) {
                            sweetAlert.disableButtons();
                            sweetAlert.closeModal(params.onClose);
                            if (params.useRejections) {
                                reject('cancel');
                            } else {
                                resolve({ dismiss: 'cancel' });
                            }
                        }
                        break;
                    default:
                }
            };

            var buttons = modal.querySelectorAll('button');
            for (var i = 0; i < buttons.length; i++) {
                buttons[i].onclick = onButtonEvent;
                buttons[i].onmouseover = onButtonEvent;
                buttons[i].onmouseout = onButtonEvent;
                buttons[i].onmousedown = onButtonEvent;
            }

            // Closing modal by close button
            getCloseButton().onclick = function () {
                sweetAlert.closeModal(params.onClose);
                if (params.useRejections) {
                    reject('close');
                } else {
                    resolve({ dismiss: 'close' });
                }
            };

            // Closing modal by overlay click
            container.onclick = function (e) {
                if (e.target !== container) {
                    return;
                }
                if (params.allowOutsideClick) {
                    sweetAlert.closeModal(params.onClose);
                    if (params.useRejections) {
                        reject('overlay');
                    } else {
                        resolve({ dismiss: 'overlay' });
                    }
                }
            };

            var buttonsWrapper = getButtonsWrapper();
            var confirmButton = getConfirmButton();
            var cancelButton = getCancelButton();

            // Reverse buttons (Confirm on the right side)
            if (params.reverseButtons) {
                confirmButton.parentNode.insertBefore(cancelButton, confirmButton);
            } else {
                confirmButton.parentNode.insertBefore(confirmButton, cancelButton);
            }

            // Focus handling
            var setFocus = function setFocus(index, increment) {
                var focusableElements = getFocusableElements(params.focusCancel);
                // search for visible elements and select the next possible match
                for (var _i3 = 0; _i3 < focusableElements.length; _i3++) {
                    index = index + increment;

                    // rollover to first item
                    if (index === focusableElements.length) {
                        index = 0;

                        // go to last item
                    } else if (index === -1) {
                        index = focusableElements.length - 1;
                    }

                    // determine if element is visible
                    var el = focusableElements[index];
                    if (isVisible(el)) {
                        return el.focus();
                    }
                }
            };

            var handleKeyDown = function handleKeyDown(event) {
                var e = event || window.event;

                if (e.key === 'Enter') {
                    if (e.target === getInput()) {
                        sweetAlert.clickConfirm();
                        e.preventDefault();
                    }

                    // TAB
                } else if (e.key === 'Tab') {
                    var targetElement = e.target || e.srcElement;

                    var focusableElements = getFocusableElements(params.focusCancel);
                    var btnIndex = -1; // Find the button - note, this is a nodelist, not an array.
                    for (var _i4 = 0; _i4 < focusableElements.length; _i4++) {
                        if (targetElement === focusableElements[_i4]) {
                            btnIndex = _i4;
                            break;
                        }
                    }

                    if (!e.shiftKey) {
                        // Cycle to the next button
                        setFocus(btnIndex, 1);
                    } else {
                        // Cycle to the prev button
                        setFocus(btnIndex, -1);
                    }
                    e.stopPropagation();
                    e.preventDefault();

                    // ARROWS - switch focus between buttons
                } else if (['ArrowLeft', 'ArrowRight', 'ArrowUp', 'Arrowdown'].indexOf(e.key) !== -1) {
                    // focus Cancel button if Confirm button is currently focused
                    if (document.activeElement === confirmButton && isVisible(cancelButton)) {
                        cancelButton.focus();
                        // and vice versa
                    } else if (document.activeElement === cancelButton && isVisible(confirmButton)) {
                        confirmButton.focus();
                    }

                    // ESC
                } else if (e.key === 'Escape' && params.allowEscapeKey === true) {
                    sweetAlert.closeModal(params.onClose);
                    if (params.useRejections) {
                        reject('esc');
                    } else {
                        resolve({ dismiss: 'esc' });
                    }
                }
            };

            if (!window.onkeydown || window.onkeydown.toString() !== handleKeyDown.toString()) {
                states.previousWindowKeyDown = window.onkeydown;
                window.onkeydown = handleKeyDown;
            }

            // Loading state
            if (params.buttonsStyling) {
                confirmButton.style.borderLeftColor = params.confirmButtonColor;
                confirmButton.style.borderRightColor = params.confirmButtonColor;
            }

            /**
             * Show spinner instead of Confirm button and disable Cancel button
             */
            sweetAlert.hideLoading = sweetAlert.disableLoading = function () {
                if (!params.showConfirmButton) {
                    hide(confirmButton);
                    if (!params.showCancelButton) {
                        hide(getButtonsWrapper());
                    }
                }
                removeClass(buttonsWrapper, swalClasses.loading);
                removeClass(modal, swalClasses.loading);
                modal.removeAttribute('aria-busy');
                confirmButton.disabled = false;
                cancelButton.disabled = false;
            };

            sweetAlert.getTitle = function () {
                return getTitle();
            };
            sweetAlert.getContent = function () {
                return getContent();
            };
            sweetAlert.getInput = function () {
                return getInput();
            };
            sweetAlert.getImage = function () {
                return getImage();
            };
            sweetAlert.getButtonsWrapper = function () {
                return getButtonsWrapper();
            };
            sweetAlert.getConfirmButton = function () {
                return getConfirmButton();
            };
            sweetAlert.getCancelButton = function () {
                return getCancelButton();
            };

            sweetAlert.enableButtons = function () {
                confirmButton.disabled = false;
                cancelButton.disabled = false;
            };

            sweetAlert.disableButtons = function () {
                confirmButton.disabled = true;
                cancelButton.disabled = true;
            };

            sweetAlert.enableConfirmButton = function () {
                confirmButton.disabled = false;
            };

            sweetAlert.disableConfirmButton = function () {
                confirmButton.disabled = true;
            };

            sweetAlert.enableInput = function () {
                var input = getInput();
                if (!input) {
                    return false;
                }
                if (input.type === 'radio') {
                    var radiosContainer = input.parentNode.parentNode;
                    var radios = radiosContainer.querySelectorAll('input');
                    for (var _i5 = 0; _i5 < radios.length; _i5++) {
                        radios[_i5].disabled = false;
                    }
                } else {
                    input.disabled = false;
                }
            };

            sweetAlert.disableInput = function () {
                var input = getInput();
                if (!input) {
                    return false;
                }
                if (input && input.type === 'radio') {
                    var radiosContainer = input.parentNode.parentNode;
                    var radios = radiosContainer.querySelectorAll('input');
                    for (var _i6 = 0; _i6 < radios.length; _i6++) {
                        radios[_i6].disabled = true;
                    }
                } else {
                    input.disabled = true;
                }
            };

            // Show block with validation error
            sweetAlert.showValidationError = function (error$$1) {
                var validationError = getValidationError();
                validationError.innerHTML = error$$1;
                show(validationError);

                var input = getInput();
                if (input) {
                    input.setAttribute('aria-invalid', true);
                    input.setAttribute('aria-describedBy', swalClasses.validationerror);
                    focusInput(input);
                    addClass(input, swalClasses.inputerror);
                }
            };

            // Hide block with validation error
            sweetAlert.resetValidationError = function () {
                var validationError = getValidationError();
                hide(validationError);

                var input = getInput();
                if (input) {
                    input.removeAttribute('aria-invalid');
                    input.removeAttribute('aria-describedBy');
                    removeClass(input, swalClasses.inputerror);
                }
            };

            sweetAlert.getProgressSteps = function () {
                return params.progressSteps;
            };

            sweetAlert.setProgressSteps = function (progressSteps) {
                params.progressSteps = progressSteps;
                setParameters(params);
            };

            sweetAlert.showProgressSteps = function () {
                show(getProgressSteps());
            };

            sweetAlert.hideProgressSteps = function () {
                hide(getProgressSteps());
            };

            sweetAlert.enableButtons();
            sweetAlert.hideLoading();
            sweetAlert.resetValidationError();

            // inputs
            var inputTypes = ['input', 'file', 'range', 'select', 'radio', 'checkbox', 'textarea'];
            var input = void 0;
            for (var _i7 = 0; _i7 < inputTypes.length; _i7++) {
                var inputClass = swalClasses[inputTypes[_i7]];
                var inputContainer = getChildByClass(modal, inputClass);
                input = getInput(inputTypes[_i7]);

                // set attributes
                if (input) {
                    for (var j in input.attributes) {
                        if (input.attributes.hasOwnProperty(j)) {
                            var attrName = input.attributes[j].name;
                            if (attrName !== 'type' && attrName !== 'value') {
                                input.removeAttribute(attrName);
                            }
                        }
                    }
                    for (var attr in params.inputAttributes) {
                        input.setAttribute(attr, params.inputAttributes[attr]);
                    }
                }

                // set class
                inputContainer.className = inputClass;
                if (params.inputClass) {
                    addClass(inputContainer, params.inputClass);
                }

                hide(inputContainer);
            }

            var populateInputOptions = void 0;
            switch (params.input) {
                case 'text':
                case 'email':
                case 'password':
                case 'number':
                case 'tel':
                case 'url':
                    input = getChildByClass(modal, swalClasses.input);
                    input.value = params.inputValue;
                    input.placeholder = params.inputPlaceholder;
                    input.type = params.input;
                    show(input);
                    break;
                case 'file':
                    input = getChildByClass(modal, swalClasses.file);
                    input.placeholder = params.inputPlaceholder;
                    input.type = params.input;
                    show(input);
                    break;
                case 'range':
                    var range = getChildByClass(modal, swalClasses.range);
                    var rangeInput = range.querySelector('input');
                    var rangeOutput = range.querySelector('output');
                    rangeInput.value = params.inputValue;
                    rangeInput.type = params.input;
                    rangeOutput.value = params.inputValue;
                    show(range);
                    break;
                case 'select':
                    var select = getChildByClass(modal, swalClasses.select);
                    select.innerHTML = '';
                    if (params.inputPlaceholder) {
                        var placeholder = document.createElement('option');
                        placeholder.innerHTML = params.inputPlaceholder;
                        placeholder.value = '';
                        placeholder.disabled = true;
                        placeholder.selected = true;
                        select.appendChild(placeholder);
                    }
                    populateInputOptions = function populateInputOptions(inputOptions) {
                        for (var optionValue in inputOptions) {
                            var option = document.createElement('option');
                            option.value = optionValue;
                            option.innerHTML = inputOptions[optionValue];
                            if (params.inputValue.toString() === optionValue) {
                                option.selected = true;
                            }
                            select.appendChild(option);
                        }
                        show(select);
                        select.focus();
                    };
                    break;
                case 'radio':
                    var radio = getChildByClass(modal, swalClasses.radio);
                    radio.innerHTML = '';
                    populateInputOptions = function populateInputOptions(inputOptions) {
                        for (var radioValue in inputOptions) {
                            var radioInput = document.createElement('input');
                            var radioLabel = document.createElement('label');
                            var radioLabelSpan = document.createElement('span');
                            radioInput.type = 'radio';
                            radioInput.name = swalClasses.radio;
                            radioInput.value = radioValue;
                            if (params.inputValue.toString() === radioValue) {
                                radioInput.checked = true;
                            }
                            radioLabelSpan.innerHTML = inputOptions[radioValue];
                            radioLabel.appendChild(radioInput);
                            radioLabel.appendChild(radioLabelSpan);
                            radioLabel.for = radioInput.id;
                            radio.appendChild(radioLabel);
                        }
                        show(radio);
                        var radios = radio.querySelectorAll('input');
                        if (radios.length) {
                            radios[0].focus();
                        }
                    };
                    break;
                case 'checkbox':
                    var checkbox = getChildByClass(modal, swalClasses.checkbox);
                    var checkboxInput = getInput('checkbox');
                    checkboxInput.type = 'checkbox';
                    checkboxInput.value = 1;
                    checkboxInput.id = swalClasses.checkbox;
                    checkboxInput.checked = Boolean(params.inputValue);
                    var label = checkbox.getElementsByTagName('span');
                    if (label.length) {
                        checkbox.removeChild(label[0]);
                    }
                    label = document.createElement('span');
                    label.innerHTML = params.inputPlaceholder;
                    checkbox.appendChild(label);
                    show(checkbox);
                    break;
                case 'textarea':
                    var textarea = getChildByClass(modal, swalClasses.textarea);
                    textarea.value = params.inputValue;
                    textarea.placeholder = params.inputPlaceholder;
                    show(textarea);
                    break;
                case null:
                    break;
                default:
                    error('Unexpected type of input! Expected "text", "email", "password", "number", "tel", "select", "radio", "checkbox", "textarea", "file" or "url", got "' + params.input + '"');
                    break;
            }

            if (params.input === 'select' || params.input === 'radio') {
                if (params.inputOptions instanceof Promise) {
                    sweetAlert.showLoading();
                    params.inputOptions.then(function (inputOptions) {
                        sweetAlert.hideLoading();
                        populateInputOptions(inputOptions);
                    });
                } else if (_typeof(params.inputOptions) === 'object') {
                    populateInputOptions(params.inputOptions);
                } else {
                    error('Unexpected type of inputOptions! Expected object or Promise, got ' + _typeof(params.inputOptions));
                }
            }

            openModal(params.animation, params.onBeforeOpen, params.onOpen);

            if (!params.allowEnterKey) {
                if (document.activeElement) {
                    document.activeElement.blur();
                }
            } else if (params.focusCancel && isVisible(cancelButton)) {
                cancelButton.focus();
            } else if (params.focusConfirm && isVisible(confirmButton)) {
                confirmButton.focus();
            } else {
                setFocus(-1, 1);
            }

            // fix scroll
            getContainer().scrollTop = 0;
        });
    };

    /*
     * Global function to determine if swal2 modal is shown
     */
    sweetAlert$1.isVisible = function () {
        return !!getModal();
    };

    /*
     * Global function for chaining sweetAlert modals
     */
    sweetAlert$1.queue = function (steps) {
        queue = steps;
        var resetQueue = function resetQueue() {
            queue = [];
            document.body.removeAttribute('data-swal2-queue-step');
        };
        var queueResult = [];
        return new Promise(function (resolve, reject) {
            (function step(i, callback) {
                if (i < queue.length) {
                    document.body.setAttribute('data-swal2-queue-step', i);

                    sweetAlert$1(queue[i]).then(function (result) {
                        queueResult.push(result);
                        step(i + 1, callback);
                    }, function (dismiss) {
                        resetQueue();
                        reject(dismiss);
                    });
                } else {
                    resetQueue();
                    resolve(queueResult);
                }
            })(0);
        });
    };

    /*
     * Global function for getting the index of current modal in queue
     */
    sweetAlert$1.getQueueStep = function () {
        return document.body.getAttribute('data-swal2-queue-step');
    };

    /*
     * Global function for inserting a modal to the queue
     */
    sweetAlert$1.insertQueueStep = function (step, index) {
        if (index && index < queue.length) {
            return queue.splice(index, 0, step);
        }
        return queue.push(step);
    };

    /*
     * Global function for deleting a modal from the queue
     */
    sweetAlert$1.deleteQueueStep = function (index) {
        if (typeof queue[index] !== 'undefined') {
            queue.splice(index, 1);
        }
    };

    /*
     * Global function to close sweetAlert
     */
    sweetAlert$1.close = sweetAlert$1.closeModal = function (onComplete) {
        var container = getContainer();
        var modal = getModal();
        if (!modal) {
            return;
        }
        removeClass(modal, swalClasses.show);
        addClass(modal, swalClasses.hide);
        clearTimeout(modal.timeout);

        resetPrevState();

        var removeModalAndResetState = function removeModalAndResetState() {
            if (container.parentNode) {
                container.parentNode.removeChild(container);
            }
            removeClass(document.documentElement, swalClasses.shown);
            removeClass(document.body, swalClasses.shown);
            undoScrollbar();
            undoIOSfix();
        };

        // If animation is supported, animate
        if (animationEndEvent && !hasClass(modal, swalClasses.noanimation)) {
            modal.addEventListener(animationEndEvent, function swalCloseEventFinished() {
                modal.removeEventListener(animationEndEvent, swalCloseEventFinished);
                if (hasClass(modal, swalClasses.hide)) {
                    removeModalAndResetState();
                }
            });
        } else {
            // Otherwise, remove immediately
            removeModalAndResetState();
        }
        if (onComplete !== null && typeof onComplete === 'function') {
            setTimeout(function () {
                onComplete(modal);
            });
        }
    };

    /*
     * Global function to click 'Confirm' button
     */
    sweetAlert$1.clickConfirm = function () {
        return getConfirmButton().click();
    };

    /*
     * Global function to click 'Cancel' button
     */
    sweetAlert$1.clickCancel = function () {
        return getCancelButton().click();
    };

    /**
     * Show spinner instead of Confirm button and disable Cancel button
     */
    sweetAlert$1.showLoading = sweetAlert$1.enableLoading = function () {
        var modal = getModal();
        if (!modal) {
            sweetAlert$1('');
        }
        modal = getModal();
        var buttonsWrapper = getButtonsWrapper();
        var confirmButton = getConfirmButton();
        var cancelButton = getCancelButton();

        show(buttonsWrapper);
        show(confirmButton, 'inline-block');
        addClass(buttonsWrapper, swalClasses.loading);
        addClass(modal, swalClasses.loading);
        confirmButton.disabled = true;
        cancelButton.disabled = true;

        modal.setAttribute('aria-busy', true);
        modal.focus();
    };

    /**
     * Is valid parameter
     * @param {String} paramName
     */
    sweetAlert$1.isValidParameter = function (paramName) {
        return defaultParams.hasOwnProperty(paramName) || paramName === 'extraParams';
    };

    /**
     * Set default params for each popup
     * @param {Object} userParams
     */
    sweetAlert$1.setDefaults = function (userParams) {
        if (!userParams || (typeof userParams === 'undefined' ? 'undefined' : _typeof(userParams)) !== 'object') {
            return error('the argument for setDefaults() is required and has to be a object');
        }

        for (var param in userParams) {
            if (!sweetAlert$1.isValidParameter(param)) {
                warn('Unknown parameter "' + param + '"');
                delete userParams[param];
            }
        }

        _extends(modalParams, userParams);
    };

    /**
     * Reset default params for each popup
     */
    sweetAlert$1.resetDefaults = function () {
        modalParams = _extends({}, defaultParams);
    };

    sweetAlert$1.noop = function () { };

    sweetAlert$1.version = '6.11.4';

    sweetAlert$1.default = sweetAlert$1;

    // Remember state in cases where opening and handling a modal will fiddle with it.
    var states = {
        previousWindowKeyDown: null,
        previousActiveElement: null,
        previousBodyPadding: null

        /*
         * Add modal + overlay to DOM
         */
    }; var init = function init(params) {
        // Clean up the old modal if it exists
        var c = getContainer();
        if (c) {
            c.parentNode.removeChild(c);
        }

        if (typeof document === 'undefined') {
            error('SweetAlert2 requires document to initialize');
            return;
        }

        var container = document.createElement('div');
        container.className = swalClasses.container;
        container.innerHTML = sweetHTML;

        var targetElement = typeof params.target === 'string' ? document.querySelector(params.target) : params.target;
        targetElement.appendChild(container);

        var modal = getModal();
        var input = getChildByClass(modal, swalClasses.input);
        var file = getChildByClass(modal, swalClasses.file);
        var range = modal.querySelector('.' + swalClasses.range + ' input');
        var rangeOutput = modal.querySelector('.' + swalClasses.range + ' output');
        var select = getChildByClass(modal, swalClasses.select);
        var checkbox = modal.querySelector('.' + swalClasses.checkbox + ' input');
        var textarea = getChildByClass(modal, swalClasses.textarea);

        input.oninput = function () {
            sweetAlert$1.resetValidationError();
        };

        file.onchange = function () {
            sweetAlert$1.resetValidationError();
        };

        range.oninput = function () {
            sweetAlert$1.resetValidationError();
            rangeOutput.value = range.value;
        };

        range.onchange = function () {
            sweetAlert$1.resetValidationError();
            range.previousSibling.value = range.value;
        };

        select.onchange = function () {
            sweetAlert$1.resetValidationError();
        };

        checkbox.onchange = function () {
            sweetAlert$1.resetValidationError();
        };

        textarea.oninput = function () {
            sweetAlert$1.resetValidationError();
        };

        return modal;
    };

    /*
     * Manipulate DOM
     */

    var sweetHTML = ('\n <div role="dialog" aria-modal="true" aria-labelledby="' + swalClasses.title + '" aria-describedby="' + swalClasses.content + '" class="' + swalClasses.modal + '" tabindex="-1">\n   <ul class="' + swalClasses.progresssteps + '"></ul>\n   <div class="' + swalClasses.icon + ' ' + iconTypes.error + '">\n     <span class="swal2-x-mark"><span class="swal2-x-mark-line-left"></span><span class="swal2-x-mark-line-right"></span></span>\n   </div>\n   <div class="' + swalClasses.icon + ' ' + iconTypes.question + '">?</div>\n   <div class="' + swalClasses.icon + ' ' + iconTypes.warning + '">!</div>\n   <div class="' + swalClasses.icon + ' ' + iconTypes.info + '">i</div>\n   <div class="' + swalClasses.icon + ' ' + iconTypes.success + '">\n     <div class="swal2-success-circular-line-left"></div>\n     <span class="swal2-success-line-tip"></span> <span class="swal2-success-line-long"></span>\n     <div class="swal2-success-ring"></div> <div class="swal2-success-fix"></div>\n     <div class="swal2-success-circular-line-right"></div>\n   </div>\n   <img class="' + swalClasses.image + '" />\n   <h2 class="' + swalClasses.title + '" id="' + swalClasses.title + '"></h2>\n   <div id="' + swalClasses.content + '" class="' + swalClasses.content + '"></div>\n   <input class="' + swalClasses.input + '" />\n   <input type="file" class="' + swalClasses.file + '" />\n   <div class="' + swalClasses.range + '">\n     <output></output>\n     <input type="range" />\n   </div>\n   <select class="' + swalClasses.select + '"></select>\n   <div class="' + swalClasses.radio + '"></div>\n   <label for="' + swalClasses.checkbox + '" class="' + swalClasses.checkbox + '">\n     <input type="checkbox" />\n   </label>\n   <textarea class="' + swalClasses.textarea + '"></textarea>\n   <div class="' + swalClasses.validationerror + '" id="' + swalClasses.validationerror + '"></div>\n   <div class="' + swalClasses.buttonswrapper + '">\n     <button type="button" class="' + swalClasses.confirm + '">OK</button>\n     <button type="button" class="' + swalClasses.cancel + '">Cancel</button>\n   </div>\n   <button type="button" class="' + swalClasses.close + '">\xD7</button>\n </div>\n').replace(/(^|\n)\s*/g, '');

    var getContainer = function getContainer() {
        return document.body.querySelector('.' + swalClasses.container);
    };

    var getModal = function getModal() {
        return getContainer() ? getContainer().querySelector('.' + swalClasses.modal) : null;
    };

    var getIcons = function getIcons() {
        var modal = getModal();
        return modal.querySelectorAll('.' + swalClasses.icon);
    };

    var elementByClass = function elementByClass(className) {
        return getContainer() ? getContainer().querySelector('.' + className) : null;
    };

    var getTitle = function getTitle() {
        return elementByClass(swalClasses.title);
    };

    var getContent = function getContent() {
        return elementByClass(swalClasses.content);
    };

    var getImage = function getImage() {
        return elementByClass(swalClasses.image);
    };

    var getProgressSteps = function getProgressSteps() {
        return elementByClass(swalClasses.progresssteps);
    };

    var getValidationError = function getValidationError() {
        return elementByClass(swalClasses.validationerror);
    };

    var getConfirmButton = function getConfirmButton() {
        return elementByClass(swalClasses.confirm);
    };

    var getCancelButton = function getCancelButton() {
        return elementByClass(swalClasses.cancel);
    };

    var getButtonsWrapper = function getButtonsWrapper() {
        return elementByClass(swalClasses.buttonswrapper);
    };

    var getCloseButton = function getCloseButton() {
        return elementByClass(swalClasses.close);
    };

    var getFocusableElements = function getFocusableElements() {
        var focusableElementsWithTabindex = Array.from(getModal().querySelectorAll('[tabindex]:not([tabindex="-1"]):not([tabindex="0"])'))
        // sort according to tabindex
        .sort(function (a, b) {
            a = parseInt(a.getAttribute('tabindex'));
            b = parseInt(b.getAttribute('tabindex'));
            if (a > b) {
                return 1;
            } else if (a < b) {
                return -1;
            }
            return 0;
        });

        var otherFocusableElements = Array.prototype.slice.call(getModal().querySelectorAll('button, input:not([type=hidden]), textarea, select, a, [tabindex="0"]'));

        return uniqueArray(focusableElementsWithTabindex.concat(otherFocusableElements));
    };

    var hasClass = function hasClass(elem, className) {
        if (elem.classList) {
            return elem.classList.contains(className);
        }
        return false;
    };

    var focusInput = function focusInput(input) {
        input.focus();

        // place cursor at end of text in text input
        if (input.type !== 'file') {
            // http://stackoverflow.com/a/2345915/1331425
            var val = input.value;
            input.value = '';
            input.value = val;
        }
    };

    var addClass = function addClass(elem, className) {
        if (!elem || !className) {
            return;
        }
        var classes = className.split(/\s+/).filter(Boolean);
        classes.forEach(function (className) {
            elem.classList.add(className);
        });
    };

    var removeClass = function removeClass(elem, className) {
        if (!elem || !className) {
            return;
        }
        var classes = className.split(/\s+/).filter(Boolean);
        classes.forEach(function (className) {
            elem.classList.remove(className);
        });
    };

    var getChildByClass = function getChildByClass(elem, className) {
        for (var i = 0; i < elem.childNodes.length; i++) {
            if (hasClass(elem.childNodes[i], className)) {
                return elem.childNodes[i];
            }
        }
    };

    var show = function show(elem, display) {
        if (!display) {
            display = 'block';
        }
        elem.style.opacity = '';
        elem.style.display = display;
    };

    var hide = function hide(elem) {
        elem.style.opacity = '';
        elem.style.display = 'none';
    };

    var empty = function empty(elem) {
        while (elem.firstChild) {
            elem.removeChild(elem.firstChild);
        }
    };

    // borrowed from jquery $(elem).is(':visible') implementation
    var isVisible = function isVisible(elem) {
        return elem.offsetWidth || elem.offsetHeight || elem.getClientRects().length;
    };

    var removeStyleProperty = function removeStyleProperty(elem, property) {
        if (elem.style.removeProperty) {
            elem.style.removeProperty(property);
        } else {
            elem.style.removeAttribute(property);
        }
    };

    var animationEndEvent = function () {
        var testEl = document.createElement('div');
        var transEndEventNames = {
            'WebkitAnimation': 'webkitAnimationEnd',
            'OAnimation': 'oAnimationEnd oanimationend',
            'animation': 'animationend'
        };
        for (var i in transEndEventNames) {
            if (transEndEventNames.hasOwnProperty(i) && testEl.style[i] !== undefined) {
                return transEndEventNames[i];
            }
        }

        return false;
    }();

    // Reset previous window keydown handler and focued element
    var resetPrevState = function resetPrevState() {
        window.onkeydown = states.previousWindowKeyDown;
        if (states.previousActiveElement && states.previousActiveElement.focus) {
            var x = window.scrollX;
            var y = window.scrollY;
            states.previousActiveElement.focus();
            if (x && y) {
                // IE has no scrollX/scrollY support
                window.scrollTo(x, y);
            }
        }
    };

    // Measure width of scrollbar
    // https://github.com/twbs/bootstrap/blob/master/js/modal.js#L279-L286
    var measureScrollbar = function measureScrollbar() {
        var supportsTouch = 'ontouchstart' in window || navigator.msMaxTouchPoints;
        if (supportsTouch) {
            return 0;
        }
        var scrollDiv = document.createElement('div');
        scrollDiv.style.width = '50px';
        scrollDiv.style.height = '50px';
        scrollDiv.style.overflow = 'scroll';
        document.body.appendChild(scrollDiv);
        var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth;
        document.body.removeChild(scrollDiv);
        return scrollbarWidth;
    };

    /**
     * Inject a string of CSS into the page header
     *
     * @param {String} css
     */
    var injectCSS = function injectCSS() {
        var css = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : '';

        var head = document.head || document.getElementsByTagName('head')[0];
        var style = document.createElement('style');
        style.type = 'text/css';
        head.appendChild(style);

        if (style.styleSheet) {
            style.styleSheet.cssText = css;
        } else {
            style.appendChild(document.createTextNode(css));
        }
    };

    injectCSS(styles);

    return sweetAlert$1;

})));
if (window.Sweetalert2) window.sweetAlert = window.swal = window.Sweetalert2;