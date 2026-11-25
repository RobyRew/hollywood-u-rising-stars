.class final Lcom/pixelberrystudios/hssandroid/g;
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
    .line 251
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pixelberrystudios/hssandroid/g;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/pixelberrystudios/hssandroid/g;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/leanplum/Leanplum;->setUserAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    return-void
.end method
