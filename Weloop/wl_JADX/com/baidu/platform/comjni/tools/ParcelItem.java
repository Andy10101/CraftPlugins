package com.baidu.platform.comjni.tools;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ParcelItem implements Parcelable {
    public static final Creator<ParcelItem> f4916a;
    private Bundle f4917b;

    static {
        f4916a = new C0648b();
    }

    public int describeContents() {
        return 0;
    }

    public Bundle getBundle() {
        return this.f4917b;
    }

    public void setBundle(Bundle bundle) {
        this.f4917b = bundle;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f4917b);
    }
}
