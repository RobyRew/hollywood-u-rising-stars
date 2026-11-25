.class final Lcom/leanplum/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/leanplum/bi;


# instance fields
.field final synthetic a:Lcom/leanplum/callbacks/StartCallback;


# direct methods
.method constructor <init>(Lcom/leanplum/callbacks/StartCallback;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/leanplum/bs;->a:Lcom/leanplum/callbacks/StartCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v0

    new-instance v1, Lcom/leanplum/bt;

    invoke-direct {v1, p0, p1}, Lcom/leanplum/bt;-><init>(Lcom/leanplum/bs;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    .line 44
    return-void
.end method
