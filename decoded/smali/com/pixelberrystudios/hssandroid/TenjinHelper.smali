.class public Lcom/pixelberrystudios/hssandroid/TenjinHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g_sdk:Lcom/tenjin/android/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tenjin/android/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tenjin/android/b;

    move-result-object v0

    sput-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    .line 23
    sget-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    invoke-virtual {v0}, Lcom/tenjin/android/b;->a()V

    .line 26
    :cond_0
    return-void
.end method

.method public static track(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    invoke-virtual {v0, p0}, Lcom/tenjin/android/b;->a(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static track(Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    invoke-virtual {v0, p0, p1}, Lcom/tenjin/android/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static transaction(Ljava/lang/String;Ljava/lang/String;ID)V
    .locals 7

    .prologue
    .line 61
    sget-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/pixelberrystudios/hssandroid/TenjinHelper;->g_sdk:Lcom/tenjin/android/b;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tenjin/android/b;->a(Ljava/lang/String;Ljava/lang/String;ID)V

    .line 64
    :cond_0
    return-void
.end method
