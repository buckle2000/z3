/*++
Copyright (c) 2018 Microsoft Corporation

Module Name:

    theory_seq_params.h

Abstract:

    Parameters for sequence theory plugin

Revision History:


--*/

#ifndef THEORY_SEQ_PARAMS_H
#define THEORY_SEQ_PARAMS_H

#include "util/params.h"

struct theory_seq_params {
    /*
     * Enable splitting guided by length constraints
     */
    bool m_split_w_len;
    bool m_seq_validate;
    bool m_seq_use_derivatives;
    bool m_seq_use_unicode;


    theory_seq_params(params_ref const & p = params_ref()):
        m_split_w_len(true),
        m_seq_validate(false),
        m_seq_use_derivatives(false),
        m_seq_use_unicode(false)
    {
        updt_params(p);
    }

    void updt_params(params_ref const & p);
};

#endif /* THEORY_SEQ_PARAMS_H */
