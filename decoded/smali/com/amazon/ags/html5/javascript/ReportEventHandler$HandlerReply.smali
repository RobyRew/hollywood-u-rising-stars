.class public Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private replyMsg:Lorg/json/JSONObject;

.field private result:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/ags/html5/javascript/ReportEventHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/html5/javascript/ReportEventHandler;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;->this$0:Lcom/amazon/ags/html5/javascript/ReportEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;->replyMsg:Lorg/json/JSONObject;

    .line 204
    iput-object p3, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;->result:Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method public getReplyMsg()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;->replyMsg:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;->result:Ljava/lang/String;

    return-object v0
.end method
