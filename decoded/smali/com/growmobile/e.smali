.class Lcom/growmobile/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/growmobile/GrowMobileSDK;


# direct methods
.method public constructor <init>(Lcom/growmobile/GrowMobileSDK;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 781
    iput-object p1, p0, Lcom/growmobile/e;->c:Lcom/growmobile/GrowMobileSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/growmobile/e;->a:Ljava/lang/String;

    .line 778
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/growmobile/e;->b:Ljava/lang/String;

    .line 782
    iput-object p3, p0, Lcom/growmobile/e;->b:Ljava/lang/String;

    .line 783
    iput-object p2, p0, Lcom/growmobile/e;->a:Ljava/lang/String;

    .line 784
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 790
    :try_start_0
    invoke-static {}, Lcom/growmobile/GrowMobileSDK;->a()Lcom/growmobile/GrowMobileSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/growmobile/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/growmobile/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/growmobile/GrowMobileSDK;->a(Lcom/growmobile/GrowMobileSDK;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/growmobile/e;->c:Lcom/growmobile/GrowMobileSDK;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/growmobile/GrowMobileSDK;->a(Lcom/growmobile/GrowMobileSDK;I)V

    .line 798
    iget-object v0, p0, Lcom/growmobile/e;->c:Lcom/growmobile/GrowMobileSDK;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/growmobile/GrowMobileSDK;->a(Lcom/growmobile/GrowMobileSDK;Z)V

    .line 826
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/growmobile/e;->c:Lcom/growmobile/GrowMobileSDK;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->b(Lcom/growmobile/GrowMobileSDK;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 805
    iget-object v0, p0, Lcom/growmobile/e;->c:Lcom/growmobile/GrowMobileSDK;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/growmobile/GrowMobileSDK;->a(Lcom/growmobile/GrowMobileSDK;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RequestThread failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/growmobile/e;->c:Lcom/growmobile/GrowMobileSDK;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->c(Lcom/growmobile/GrowMobileSDK;)I

    move-result v0

    .line 814
    iget-object v1, p0, Lcom/growmobile/e;->c:Lcom/growmobile/GrowMobileSDK;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/growmobile/GrowMobileSDK;->a(Lcom/growmobile/GrowMobileSDK;Z)V

    .line 817
    invoke-static {}, Lcom/growmobile/GrowMobileSDK;->a()Lcom/growmobile/GrowMobileSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/growmobile/e;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/growmobile/GrowMobileSDK;->a(Lcom/growmobile/GrowMobileSDK;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
