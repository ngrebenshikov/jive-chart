package ;

class MainView extends org.aswing.JWindow implements jive.DataContextControllable<MainViewModel> {

    var chart1_initialized:Bool = false;

    @:isVar public var chart1(get, set):jive.chart.Chart;

    var chart2_initialized:Bool = false;

    @:isVar public var chart2(get, set):jive.chart.Chart;

    public function destroyHml():Void {
        
    }
    

    inline function get_borderLayout__0():org.aswing.BorderLayout {
        /* declarations/MainView.xml:7 characters: 17-29 */
        var res = new org.aswing.BorderLayout();
        /* declarations/MainView.xml:7 characters: 31-35 */
        res.hgap = 50;
        /* declarations/MainView.xml:7 characters: 41-45 */
        res.vgap = 50;
        return res;
    }

    inline function get_aSColor__0():org.aswing.ASColor {
        /* declarations/MainView.xml:11 characters: 21-28 */
        var res = new org.aswing.ASColor();
        /* declarations/MainView.xml:11 characters: 30-33 */
        res.rgb = 0xe1e1e1;
        return res;
    }

    inline function get_aSColor__1():org.aswing.ASColor {
        /* declarations/MainView.xml:14 characters: 21-28 */
        var res = new org.aswing.ASColor();
        /* declarations/MainView.xml:14 characters: 30-33 */
        res.rgb = 0x34495e;
        return res;
    }

    inline function get_intDimension__0():org.aswing.geom.IntDimension {
        /* declarations/MainView.xml:17 characters: 21-38 */
        var res = new org.aswing.geom.IntDimension();
        /* declarations/MainView.xml:17 characters: 40-45 */
        res.width = 150;
        /* declarations/MainView.xml:17 characters: 52-58 */
        res.height = -1;
        return res;
    }

    inline function get_string__0():String {
        /* declarations/MainView.xml:22 characters: 25-33 */
        var res = 'Gold';
        return res;
    }

    inline function get_string__1():String {
        /* declarations/MainView.xml:23 characters: 25-33 */
        var res = 'Russia:Population, total';
        return res;
    }

    inline function get_string__2():String {
        /* declarations/MainView.xml:24 characters: 25-33 */
        var res = 'USD/BITCOIN';
        return res;
    }

    inline function get_string__3():String {
        /* declarations/MainView.xml:25 characters: 25-33 */
        var res = 'Europe Brent Crude Oil';
        return res;
    }

    inline function get_vectorListModel__0():org.aswing.VectorListModel {
        /* declarations/MainView.xml:21 characters: 21-36 */
        var res = new org.aswing.VectorListModel();
        res.append(get_string__0());
        res.append(get_string__1());
        res.append(get_string__2());
        res.append(get_string__3());
        return res;
    }

    inline function get_jList__0():org.aswing.JList {
        /* declarations/MainView.xml:9 characters: 13-18 */
        var res = new org.aswing.JList();
        if (null != dataContext) { res.selectedIndex = this.dataContext.menuSelectedIndex; }
        var programmaticalyChange = false;
        var sourcePropertyListener = function(_,_) {
                            if (!programmaticalyChange) {
                                programmaticalyChange = true;
                                res.selectedIndex = this.dataContext.menuSelectedIndex;
                                programmaticalyChange = false;
                            }
                        };
        var bindSourceListener = function() { bindx.Bind.bindx(this.dataContext.menuSelectedIndex, sourcePropertyListener); }
        if (null != dataContext) { bindSourceListener(); }
        bindx.Bind.bindx(this.dataContext, function(old,_) {
                                if (null != old) { bindx.Bind.unbindx(old.menuSelectedIndex, sourcePropertyListener);}
                                if (null != this.dataContext) {
                                    res.selectedIndex = this.dataContext.menuSelectedIndex;
                                    bindSourceListener();
                                }
                            });
                        
        var propertyListener = function(_,_) {
                                if (!programmaticalyChange && null != this.dataContext) {
                                    programmaticalyChange = true;
                                    this.dataContext.menuSelectedIndex = res.selectedIndex;
                                    programmaticalyChange = false;
                                }
                            };
        bindx.Bind.bindx(res.selectedIndex, propertyListener);
        bindx.Bind.bindx(this.dataContext, function(old,_) {
                                 if (null != this.dataContext) {
                                    this.dataContext.menuSelectedIndex = res.selectedIndex;
                                }
                            });
        /* declarations/MainView.xml:9 characters: 76-87 */
        res.constraints = org.aswing.BorderLayout.WEST;
        /* declarations/MainView.xml:10 characters: 17-27 */
        res.background = get_aSColor__0();
        /* declarations/MainView.xml:13 characters: 17-36 */
        res.selectionBackground = get_aSColor__1();
        /* declarations/MainView.xml:16 characters: 17-30 */
        res.preferredSize = get_intDimension__0();
        /* declarations/MainView.xml:20 characters: 17-22 */
        res.model = get_vectorListModel__0();
        return res;
    }

    function set_chart1(value:jive.chart.Chart):jive.chart.Chart {
        chart1_initialized = true;
        return chart1 = value;
    }

    inline function get_aSColor__2():org.aswing.ASColor {
        /* declarations/MainView.xml:31 characters: 21-28 */
        var res = new org.aswing.ASColor();
        /* declarations/MainView.xml:31 characters: 30-33 */
        res.rgb = 0x000000;
        return res;
    }

    inline function get_chartUI__0():jive.chart.ChartUI {
        /* declarations/MainView.xml:33 characters: 21-34 */
        var res = new jive.chart.ChartUI();
        return res;
    }

    inline function get_intDimension__1():org.aswing.geom.IntDimension {
        /* declarations/MainView.xml:35 characters: 21-38 */
        var res = new org.aswing.geom.IntDimension();
        /* declarations/MainView.xml:35 characters: 40-45 */
        res.width = 350;
        /* declarations/MainView.xml:35 characters: 52-58 */
        res.height = 230;
        return res;
    }

    function get_chart1():jive.chart.Chart {
        /* declarations/MainView.xml:29 characters: 13-24 */
        if (chart1_initialized) return chart1;
        chart1_initialized = true;
        this.chart1 = new jive.chart.Chart();
        var res = this.chart1;
        if (null != dataContext) { res.data = this.dataContext.chartData; }
        var programmaticalyChange = false;
        var sourcePropertyListener = function(_,_) {
                            if (!programmaticalyChange) {
                                programmaticalyChange = true;
                                res.data = this.dataContext.chartData;
                                programmaticalyChange = false;
                            }
                        };
        var bindSourceListener = function() { bindx.Bind.bindx(this.dataContext.chartData, sourcePropertyListener); }
        if (null != dataContext) { bindSourceListener(); }
        bindx.Bind.bindx(this.dataContext, function(old,_) {
                                if (null != old) { bindx.Bind.unbindx(old.chartData, sourcePropertyListener);}
                                if (null != this.dataContext) {
                                    res.data = this.dataContext.chartData;
                                    bindSourceListener();
                                }
                            });
                        
        /* declarations/MainView.xml:29 characters: 38-49 */
        res.constraints = org.aswing.BorderLayout.CENTER;
        /* declarations/MainView.xml:30 characters: 17-27 */
        res.foreground = get_aSColor__2();
        /* declarations/MainView.xml:33 characters: 17-19 */
        res.ui = get_chartUI__0();
        /* declarations/MainView.xml:34 characters: 17-30 */
        res.preferredSize = get_intDimension__1();
        return res;
    }

    function set_chart2(value:jive.chart.Chart):jive.chart.Chart {
        chart2_initialized = true;
        return chart2 = value;
    }

    inline function get_aSColor__3():org.aswing.ASColor {
        /* declarations/MainView.xml:40 characters: 21-28 */
        var res = new org.aswing.ASColor();
        /* declarations/MainView.xml:40 characters: 30-33 */
        res.rgb = 0xffffff;
        return res;
    }

    inline function get_chartPeriodSelector__0():jive.chart.ChartPeriodSelector {
        /* declarations/MainView.xml:42 characters: 21-46 */
        var res = new jive.chart.ChartPeriodSelector();
        return res;
    }

    inline function get_intDimension__2():org.aswing.geom.IntDimension {
        /* declarations/MainView.xml:44 characters: 21-38 */
        var res = new org.aswing.geom.IntDimension();
        /* declarations/MainView.xml:44 characters: 40-45 */
        res.width = 100;
        /* declarations/MainView.xml:44 characters: 52-58 */
        res.height = 70;
        return res;
    }

    function get_chart2():jive.chart.Chart {
        /* declarations/MainView.xml:38 characters: 13-24 */
        if (chart2_initialized) return chart2;
        chart2_initialized = true;
        this.chart2 = new jive.chart.Chart();
        var res = this.chart2;
        if (null != dataContext) { res.data = this.dataContext.chartData; }
        var programmaticalyChange = false;
        var sourcePropertyListener = function(_,_) {
                            if (!programmaticalyChange) {
                                programmaticalyChange = true;
                                res.data = this.dataContext.chartData;
                                programmaticalyChange = false;
                            }
                        };
        var bindSourceListener = function() { bindx.Bind.bindx(this.dataContext.chartData, sourcePropertyListener); }
        if (null != dataContext) { bindSourceListener(); }
        bindx.Bind.bindx(this.dataContext, function(old,_) {
                                if (null != old) { bindx.Bind.unbindx(old.chartData, sourcePropertyListener);}
                                if (null != this.dataContext) {
                                    res.data = this.dataContext.chartData;
                                    bindSourceListener();
                                }
                            });
                        
        /* declarations/MainView.xml:38 characters: 38-49 */
        res.constraints = org.aswing.BorderLayout.SOUTH;
        /* declarations/MainView.xml:39 characters: 17-27 */
        res.foreground = get_aSColor__3();
        /* declarations/MainView.xml:42 characters: 17-19 */
        res.ui = get_chartPeriodSelector__0();
        /* declarations/MainView.xml:43 characters: 17-30 */
        res.preferredSize = get_intDimension__2();
        return res;
    }

    inline function get_jPanel__0():org.aswing.JPanel {
        /* declarations/MainView.xml:5 characters: 9-15 */
        var res = new org.aswing.JPanel();
        /* declarations/MainView.xml:6 characters: 13-19 */
        res.layout = get_borderLayout__0();
        res.append(get_jList__0());
        res.append(chart1);
        res.append(chart2);
        return res;
    }

    public function new() {
        /* declarations/MainView.xml:2 characters: 1-8 */
        super();
        /* declarations/MainView.xml:4 characters: 5-12 */
        this.content = get_jPanel__0();
    }
}
