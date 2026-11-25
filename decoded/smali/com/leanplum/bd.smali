.class final Lcom/leanplum/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/leanplum/Var;


# direct methods
.method constructor <init>(Lcom/leanplum/Var;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/leanplum/bd;->a:Lcom/leanplum/Var;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/leanplum/bd;->a:Lcom/leanplum/Var;

    invoke-static {v0}, Lcom/leanplum/Var;->a(Lcom/leanplum/Var;)V

    .line 258
    return-void
.end method
