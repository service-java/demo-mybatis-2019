package test;

/**
 * Created by Luo_0412 on 2017/4/9.
 */
import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class ExportTables {

    /**
     * @param args
     */
    public static void main(String[] args) {
        Configuration cfg = new Configuration().configure();//加载配置信息
        SchemaExport export = new SchemaExport(cfg);//实例化SchemaExport对象
        export.create(true, true);//导出数据库表
    }

}
