.class public Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;
.super Landroid/widget/YFRemoteViews3$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetOnClickPendingIntent"
.end annotation


# instance fields
.field b:Landroid/app/PendingIntent;

.field final synthetic c:Landroid/widget/YFRemoteViews3;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 683
    iput-object p1, p0, Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;->c:Landroid/widget/YFRemoteViews3;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews3$Action;-><init>()V

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;->a:I

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;->b:Landroid/app/PendingIntent;

    .line 690
    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 693
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget v2, p0, Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;->a:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget-object v2, p0, Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;->b:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 701
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 697
    goto :goto_0
.end method
