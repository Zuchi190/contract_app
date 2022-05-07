class PdfsController < ApplicationController
  def bill
    respond_to do |format|
      format.pdf do
        render pdf: '請求書', # 出力されるpdfのファイル名
               layout: 'application', # レイアウトファイル
               encording: 'UTF-8',
               show_as_html: params[:debug].present? # デバッグ用。url末尾に`debug=1`をつけるとHTMLで表示できる
      end
    end
  end
end
