.class Lcom/crashlytics/android/c/bg;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/be;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/be;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/crashlytics/android/c/bg;->a:Lcom/crashlytics/android/c/be;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/c/bg;->a:Lcom/crashlytics/android/c/be;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/c/be;->a(Lcom/crashlytics/android/c/be;Z)Z

    .line 51
    return-void
.end method
