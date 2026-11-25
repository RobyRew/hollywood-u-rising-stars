.class final Lcom/pixelberrystudios/hssandroid/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pixelberrystudios/hssandroid/f;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 238
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->getInstance()Lcom/pixelberrystudios/iab/BaseIabActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/hssandroid/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/pixelberrystudios/hssandroid/f;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/leanplum/Leanplum;->start(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 239
    return-void
.end method
