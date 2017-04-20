package cn.sharesdk.framework;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import cn.sharesdk.framework.utils.UIHandler;
import java.util.HashMap;

public class FakeActivity {
    private static Class<? extends ShareSDKUIShell> shell;
    protected Activity activity;
    private View contentView;
    private HashMap<String, Object> result;
    private FakeActivity resultReceiver;

    public static void setShell(Class<? extends ShareSDKUIShell> cls) {
        shell = cls;
    }

    public final void finish() {
        this.activity.finish();
    }

    public View getContentView() {
        return this.contentView;
    }

    public Context getContext() {
        return this.activity;
    }

    public FakeActivity getParent() {
        return this.resultReceiver;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public void onCreate() {
    }

    public void onDestroy() {
    }

    public boolean onFinish() {
        return false;
    }

    public boolean onKeyEvent(int i, KeyEvent keyEvent) {
        return false;
    }

    protected void onNewIntent(Intent intent) {
    }

    public void onPause() {
    }

    public void onRestart() {
    }

    public void onResult(HashMap<String, Object> hashMap) {
    }

    public void onResume() {
    }

    public void onStart() {
    }

    public void onStop() {
    }

    public void runOnUIThread(Runnable runnable) {
        UIHandler.sendEmptyMessage(0, new C0020b(this, runnable));
    }

    public void runOnUIThread(Runnable runnable, long j) {
        UIHandler.sendEmptyMessageDelayed(0, j, new C0021c(this, runnable));
    }

    void sendResult() {
        if (this.resultReceiver != null) {
            this.resultReceiver.onResult(this.result);
        }
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    final void setContentView(View view) {
        this.contentView = view;
    }

    public final void setResult(HashMap<String, Object> hashMap) {
        this.result = hashMap;
    }

    public void show(Context context, Intent intent) {
        showForResult(context, intent, null);
    }

    public void showForResult(Context context, Intent intent, FakeActivity fakeActivity) {
        this.resultReceiver = fakeActivity;
        Message message = new Message();
        Intent intent2 = new Intent(context, shell == null ? ShareSDKUIShell.class : shell);
        intent2.putExtra("launch_time", ShareSDKUIShell.m2910a(this));
        if (intent != null) {
            intent2.putExtras(intent);
        }
        message.obj = new Object[]{context, intent2};
        UIHandler.sendMessage(message, new C0010a(this));
    }

    public void startActivity(Intent intent) {
        startActivityForResult(intent, -1);
    }

    public void startActivityForResult(Intent intent, int i) {
        this.activity.startActivityForResult(intent, i);
    }
}