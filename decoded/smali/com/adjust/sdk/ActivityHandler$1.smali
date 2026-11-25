.class Lcom/adjust/sdk/ActivityHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$responseData:Lcom/adjust/sdk/ResponseData;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ResponseData;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$1;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$1;->val$responseData:Lcom/adjust/sdk/ResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$1;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/OnFinishedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$1;->val$responseData:Lcom/adjust/sdk/ResponseData;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnFinishedListener;->onFinishedTracking(Lcom/adjust/sdk/ResponseData;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method
