.class final Lcom/leanplum/u;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leanplum/t;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 323
    iput-object p2, p0, Lcom/leanplum/u;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 2

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/u;->a:Ljava/lang/String;

    new-instance v1, Lcom/leanplum/v;

    invoke-direct {v1, p0}, Lcom/leanplum/v;-><init>(Lcom/leanplum/u;)V

    invoke-static {v0, v1}, Lcom/leanplum/LeanplumPushService;->a(Ljava/lang/String;Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
