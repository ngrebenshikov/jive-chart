package ;

import haxe.Http;
import jive.chart.Point;
import bindx.IBindable;
import haxe.Json;


class MainViewModel implements IBindable {

    var urls = ["http://www.quandl.com/api/v1/datasets/OFDP/GOLD_1.json",
    "http://www.quandl.com/api/v1/datasets/OFDP/GOLD_2.json",
    "http://www.quandl.com/api/v1/datasets/OFDP/GOLD_1.json",
    "http://www.quandl.com/api/v1/datasets/OFDP/GOLD_1.json"];

    @bindable public var menuSelectedIndex(default, set): Int;
    private function set_menuSelectedIndex(v: Int): Int {
        menuSelectedIndex = v;
        loadUrl(v);
        return v;
    }

    @bindable public var chartData: Array<Point>;

    public function new() {
        loadUrl(0);
    }

    private function loadUrl(index: Int) {
        var result: Dynamic = Json.parse(Http.requestUrl(urls[index]));
        var points = [];
        for (v in cast(result.data, Array<Dynamic>)) {
            points.push(new Point(Date.fromString(v[0]), v[1]));
        }
        chartData = points;
    }
}
