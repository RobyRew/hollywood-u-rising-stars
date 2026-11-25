.class public Lcom/crashlytics/android/ndk/b;
.super Lb/a/a/a/q;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/c/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/q",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/crashlytics/android/c/a/a;"
    }
.end annotation


# instance fields
.field private a:Lcom/crashlytics/android/ndk/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lb/a/a/a/q;-><init>()V

    return-void
.end method

.method public static f()Lcom/crashlytics/android/ndk/b;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/crashlytics/android/ndk/b;

    invoke-static {v0}, Lb/a/a/a/f;->a(Ljava/lang/Class;)Lb/a/a/a/q;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/ndk/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "1.1.6.167"

    return-object v0
.end method

.method a(Lcom/crashlytics/android/ndk/f;Lcom/crashlytics/android/c/ao;Lcom/crashlytics/android/c/aw;)Z
    .locals 4

    .prologue
    .line 63
    iput-object p1, p0, Lcom/crashlytics/android/ndk/b;->a:Lcom/crashlytics/android/ndk/f;

    .line 64
    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/b;->t()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/crashlytics/android/ndk/f;->a(Landroid/content/Context;)Z

    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p3, p2, p0}, Lcom/crashlytics/android/c/aw;->a(Lcom/crashlytics/android/c/ao;Lcom/crashlytics/android/ndk/b;)V

    .line 68
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsNdk"

    const-string/jumbo v3, "Crashlytics NDK initialization successful"

    invoke-interface {v1, v2, v3}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "com.crashlytics.sdk.android.crashlytics-ndk"

    return-object v0
.end method

.method protected b_()Z
    .locals 3

    .prologue
    .line 50
    const-class v0, Lcom/crashlytics/android/c/ao;

    invoke-static {v0}, Lb/a/a/a/f;->a(Ljava/lang/Class;)Lb/a/a/a/q;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/c/ao;

    .line 51
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lb/a/a/a/a/c/z;

    const-string/jumbo v1, "CrashlyticsNdk requires Crashlytics"

    invoke-direct {v0, v1}, Lb/a/a/a/a/c/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/ndk/g;->a(Lcom/crashlytics/android/ndk/b;)Lcom/crashlytics/android/ndk/f;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/crashlytics/android/c/aw;

    invoke-direct {v2}, Lcom/crashlytics/android/c/aw;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Lcom/crashlytics/android/ndk/b;->a(Lcom/crashlytics/android/ndk/f;Lcom/crashlytics/android/c/ao;Lcom/crashlytics/android/c/aw;)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/crashlytics/android/c/a/a/d;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/crashlytics/android/ndk/b;->a:Lcom/crashlytics/android/ndk/f;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/f;->b()Lcom/crashlytics/android/c/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/b;->g()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/crashlytics/android/ndk/b;->a:Lcom/crashlytics/android/ndk/f;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/f;->a()V

    .line 83
    iget-object v0, p0, Lcom/crashlytics/android/ndk/b;->a:Lcom/crashlytics/android/ndk/f;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/f;->c()V

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method
