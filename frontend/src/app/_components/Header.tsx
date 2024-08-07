'use client'

import { useEffect, useRef, useState } from 'react'
import Logo from '/public/images/logo.svg'
import Image from 'next/image'
import Link from 'next/link'
import UserDropdownMenu from '@/app/_components/UserDropdownMenu'

export default function Header() {
  const [isLogin, setIsLogin] = useState(true)
  const [isUserMenuOpen, setIsUserMenuOpen] = useState(false)
  const userMenuRef = useRef<HTMLDivElement>(null)

  const handleClickUserMenuOutside = (event: MouseEvent) => {
    if (
      userMenuRef.current &&
      !userMenuRef.current.contains(event.target as Node)
    ) {
      setIsUserMenuOpen(false)
    }
  }

  useEffect(() => {
    if (isUserMenuOpen) {
      document.addEventListener('click', handleClickUserMenuOutside)
    } else {
      document.removeEventListener('click', handleClickUserMenuOutside)
    }
    return () => {
      document.removeEventListener('click', handleClickUserMenuOutside)
    }
  }, [isUserMenuOpen])

  return (
    <header className="bg-[#eaf5ff] z-50 fixed h-20 px-9 flex w-full items-center justify-between">
      <Link href="/" className="h-7">
        <Logo height="27" />
      </Link>
      <div className="flex gap-6 items-center">
        {isLogin ? (
          <>
            <Link
              href="/modals/add-sentence"
              className="text-base font-bold bg-primary-400 text-white py-2 px-11 rounded-full"
            >
              나만의 문장 추가
            </Link>
            <Image
              src="/images/dictation.png"
              width={0}
              height={0}
              sizes="100%"
              className="w-10 h-10 rounded-full border border-gray-100 cursor-pointer"
              alt="profile"
              onClick={() => setIsUserMenuOpen(true)}
            />
            {isUserMenuOpen && (
              <div ref={userMenuRef} className="absolute top-20 right-10">
                <UserDropdownMenu setIsUserMenuOpen={setIsUserMenuOpen} />
              </div>
            )}
          </>
        ) : (
          <button className="text-base font-bold bg-primary-400 text-white py-2 px-11 rounded-full">
            로그인
          </button>
        )}
      </div>
    </header>
  )
}