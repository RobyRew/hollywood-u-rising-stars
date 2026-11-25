.class final Lcom/leanplum/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/leanplum/bg;


# instance fields
.field final synthetic a:Lcom/leanplum/callbacks/StartCallback;


# direct methods
.method constructor <init>(Lcom/leanplum/callbacks/StartCallback;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/leanplum/bu;->a:Lcom/leanplum/callbacks/StartCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v0

    new-instance v1, Lcom/leanplum/bv;

    invoke-direct {v1, p0}, Lcom/leanplum/bv;-><init>(Lcom/leanplum/bu;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    .line 57
    return-void
.end method
