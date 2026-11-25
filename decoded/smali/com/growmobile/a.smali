.class Lcom/growmobile/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/growmobile/GrowMobileSDK;


# direct methods
.method constructor <init>(Lcom/growmobile/GrowMobileSDK;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/growmobile/a;->a:Lcom/growmobile/GrowMobileSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 294
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 295
    return-object v0
.end method
