.class Lcom/growmobile/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/growmobile/GrowMobileSDK;


# direct methods
.method constructor <init>(Lcom/growmobile/GrowMobileSDK;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/growmobile/b;->a:Lcom/growmobile/GrowMobileSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/growmobile/b;->a:Lcom/growmobile/GrowMobileSDK;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->a(Lcom/growmobile/GrowMobileSDK;)V

    .line 711
    return-void
.end method
