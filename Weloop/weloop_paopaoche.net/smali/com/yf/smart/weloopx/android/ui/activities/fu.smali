.class Lcom/yf/smart/weloopx/android/ui/activities/fu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fu;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fu;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I

    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fu;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;

    invoke-static {v0, p3}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I

    .line 150
    return-void
.end method