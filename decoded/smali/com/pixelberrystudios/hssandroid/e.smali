.class final Lcom/pixelberrystudios/hssandroid/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/e;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/hssandroid/e;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/leanplum/Leanplum;->start(Landroid/content/Context;Ljava/util/Map;)V

    .line 224
    return-void
.end method
